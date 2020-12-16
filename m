Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7832DBA4F
	for <lists+usrp-users@lfdr.de>; Wed, 16 Dec 2020 06:07:22 +0100 (CET)
Received: from [::1] (port=45876 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kpP1z-0003Rf-5z; Wed, 16 Dec 2020 00:07:19 -0500
Received: from mail-ua1-f49.google.com ([209.85.222.49]:42916)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kpP1v-0003LQ-9t
 for usrp-users@lists.ettus.com; Wed, 16 Dec 2020 00:07:15 -0500
Received: by mail-ua1-f49.google.com with SMTP id n18so7526835ual.9
 for <usrp-users@lists.ettus.com>; Tue, 15 Dec 2020 21:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q1+FqwXuyXv1rO96VehYZi9/iVLr67PKJAQUm62sZHg=;
 b=Zoy1LC2Y65c7vaDyc5zAaTFZJXv3pV3WUE9D5FD6YHVAZg1UgASLd877rQ5VZq7WV4
 8U++ggm5Evf0bJIC8u/onBlEDLh52gWJFmNpz76+ZsrW50LvRwZ8rdNU/FVTqUgZSbC/
 Q4TK7NEyewbGBUQx7EpBP9QpYn2TRXY1SMfu+CRbcsShyYsuciU6AeBRWblCrsFjItjL
 znJK8eKUrgL3o4ZH0ulPwCR42gksw0UfjVBlhGEL/l+ggum+d893r0cE2JNqwgehscmG
 RDFPYd4yWChcyU0UOwuIUvVKWI2wfn+PWzk31yffS1WEnpHUbArswm+/SjRag8RxSJB6
 Ki6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q1+FqwXuyXv1rO96VehYZi9/iVLr67PKJAQUm62sZHg=;
 b=KnV8ftYUNPfE32/M/OYYutfdc9i8YT+ucpqxCMS1ZG6JIjlpsHDJQBEG8mnAZF/KDb
 sywO8PZnesQCVH5ulUf0mVwO8Lh4tZodiOGgEVPCK5Xh7pis+uyp/MmWggZ07W4ex00W
 4r6VkGelodPg9kh2rZoQZdDMO0yiZQ6EzjqHJyXo+H4q3HeRLs5EzzuAP3skqRLnK+sT
 xjKHmvwXhDFU47DTrmu2fxObDULNA8v+iDgAWX4QTJdTIHve14d9mgZ8DYwngAdMIzck
 T2UlB+KW/5zdY6jfewKlpDfbD3gTFzSGJXd0/aN8roSZIOxTjifHyJ/UDv5bBP93N9IL
 dPkg==
X-Gm-Message-State: AOAM530aEiz6sjTUGFnB4v+1DIf0Ni2meiuGwiKTvO+kzNe53SEADG8c
 praoz3LqB/cCS07ItXRzM9tg1615Ed6puHVQ1EY3Y/nx
X-Google-Smtp-Source: ABdhPJyv/sAJV8vNY5UuoXqWLj5ISCHI+2B/f+/8YoIpLcCfwiE9jxtFtiSe2YwlLHjc9Vg8NwouzWJxsu3z3ogmJ0E=
X-Received: by 2002:ab0:4597:: with SMTP id u23mr31817892uau.100.1608095194281; 
 Tue, 15 Dec 2020 21:06:34 -0800 (PST)
MIME-Version: 1.0
References: <0de28dac284d443f97212f5559446f66@gtri.gatech.edu>
 <72b3782485534f1c843149b5b70ef955@gtri.gatech.edu>
 <CAL7q81uuY5BK8RGHk0M_Wgo_9gheOzWJ1t=RstwWFAn=zBbS_A@mail.gmail.com>
 <95cdc0110e3446408a8916ac27624629@gtri.gatech.edu>
In-Reply-To: <95cdc0110e3446408a8916ac27624629@gtri.gatech.edu>
Date: Wed, 16 Dec 2020 00:05:58 -0500
Message-ID: <CAL7q81vyqsK-Uryu05uRWg8WB_acv+CLaPmS3e2qhGSxpUDK=w@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC passing metadata on the dataplane
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============6836420983525973700=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6836420983525973700==
Content-Type: multipart/alternative; boundary="000000000000d20d4105b68dd60a"

--000000000000d20d4105b68dd60a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

 Is  there a document describing the CHDR header for 3.15? Looking at the
> code, there are significant differences between the header format in  3.1=
5
> and what=E2=80=99s in the 4.0 spec. I think I understand it from the code=
, but if
> there=E2=80=99s a doc with more detail or explanation, that would be usef=
ul.


The RFNoC3 CHDR header is described in the UHD 3.15 manual:
https://files.ettus.com/manual_archive/v3.15.0.0/html/page_rtp.html. There
is a bit more detail in these slides:
https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_202008_part_2.pdf

 Is there a maximum payload size for a CHDR data packet


Technically it is 64k bytes, but due to FIFO sizing in our devices, you
should not exceed 7992 bytes / 1998 SC16 samples.

Jonathon

On Tue, Dec 15, 2020 at 11:18 PM Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
wrote:

> Thanks, Jonathan, that is very helpful. Two questions using SIMPLE_MODE=
=3D0
> and AXI wrapper:
>
> 1.       Is  there a document describing the CHDR header for 3.15? Lookin=
g
> at the  code, there are significant differences between the header format
> in  3.15 and what=E2=80=99s in the 4.0 spec. I think I understand it from=
 the code,
> but if there=E2=80=99s a doc with more detail or explanation, that would =
be useful.
> 2.       Is there a maximum payload size for a CHDR data packet
>
> Jeff
>
> ------------------------------
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Friday, December 11, 2020 4:47:57 PM
> *To:* Hodges, Jeff
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] RFNoC passing metadata on the dataplane
>
> Hi Jeff,
>
> RFNoC3 / UHD 3.15 does not support metadata. That is a new feature in
> RFNoC4 / UHD 4.0, so option 2 is not possible.
>
> If you want to send out metadata in RFNoC3, I would suggest prepending it
> to packets you send to AXI wrapper. You can still use SIMPLE_MODE as long
> as you are producing a packet for every packet consumed. The different
> input/output packet lengths do not matter as AXI wrapper internally
> calculates the output packet length and updates the header automatically.
>
> Jonathon
>
> On Fri, Dec 11, 2020 at 3:48 PM Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I meant rfnoc_create_verilog.py
>>
>>
>>
>> https://github.com/EttusResearch/uhd/blob/master/host/utils/rfnoc_blockt=
ool/rfnoc_create_verilog.py
>>
>>
>> jeff
>> ------------------------------
>> *From:* Hodges, Jeff
>> *Sent:* Friday, December 11, 2020 3:44:41 PM
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* RFNoC passing metadata on the dataplane
>>
>>
>> I'd like to pass metadata over the dataplane using the available space i=
n
>> the CHDR header.  However, I cannot find an easy way to do this using
>> UHD3.15.
>>
>>
>> I've identified two possible approaches but I'm not sure either will wor=
k:
>> (1) Set AXI_Wrapper (Simple_Mode =3D0) to require user provided CHDR
>> header. It's unclear how to provide the header, and if this can be modif=
ied
>> quickly.
>>
>> (2) Expose the AXI-Stream CHDR interface the way UHD4.0 does it:
>>
>> In UHD4.0 the verilog_image_builder.py includes the options to expose HD=
L
>> interface:
>>
>> o Definition: Which HDL interface to expose
>> o Options: =E2=80=9CAXI-Stream CHDR=E2=80=9D (axis_chdr), =E2=80=9CAXI-S=
tream Payload Context=E2=80=9D
>> (axis_pyld_ctxt), or =E2=80=9CAXI-Stream Data=E2=80=9D (axis_data)
>>
>> If Option (2) is the recommended, can I just copy the code from
>> verilog_image_builder.py TEMPLATE such as below, or were other changes m=
ade
>> to make it incompatible with 3.15?
>>
>>  %if config['data']['fpga_iface'] =3D=3D
>> "axis_pyld_ctxt":
>> assign axis_data_clk =3D
>> ${config['data']['clk_domain']}_clk;
>> assign axis_data_rst =3D
>> ${config['data']['clk_domain']}_rst;
>>  <%include
>> file=3D"/modules/axis_pyld_ctxt_modules_template.mako"/>
>>
>>
>>
>> Thanks,
>>
>> Jeff
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000d20d4105b68dd60a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><span style=3D"color:rgb(0,0,0);font-family:Calibri,Helvetic=
a,sans-serif;font-size:16px">=C2=A0Is=C2=A0 there a document describing the=
 CHDR header for 3.15? Looking at the=C2=A0 code, there are significant dif=
ferences between the header format in=C2=A0 3.15 and what=E2=80=99s in the =
4.0 spec. I think I understand it from the code, but if there=E2=80=99s a d=
oc with more detail or explanation, that would be useful.</span></blockquot=
e><div><br></div><div>The RFNoC3 CHDR header is described in the UHD 3.15 m=
anual: <a href=3D"https://files.ettus.com/manual_archive/v3.15.0.0/html/pag=
e_rtp.html" target=3D"_blank">https://files.ettus.com/manual_archive/v3.15.=
0.0/html/page_rtp.html</a>. There is a bit more detail in these slides:=C2=
=A0<a href=3D"https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_20200=
8_part_2.pdf">https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_20200=
8_part_2.pdf</a></div><div><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><span style=3D"color:rgb(0,0,0);font-family:Calibri,Helvetica,s=
ans-serif;font-size:16px">=C2=A0Is there a maximum payload size for a CHDR =
data packet</span></blockquote><div><br></div><div>Technically=C2=A0it is 6=
4k bytes, but due to FIFO sizing in our devices, you should not exceed 7992=
 bytes / 1998 SC16 samples.</div><div><br></div><div>Jonathon</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
Dec 15, 2020 at 11:18 PM Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtr=
i.gatech.edu" target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>

<div id=3D"gmail-m_4007353540409346430gmail-m_-7685357467159058153divtagdef=
aultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,H=
elvetica,sans-serif" dir=3D"ltr">
<p></p>
<div>Thanks, Jonathan, that is very helpful. Two questions using SIMPLE_MOD=
E=3D0 and AXI wrapper:<br>
=C2=A0<br>
1.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Is=C2=A0 there a document describing=
 the CHDR header for 3.15? Looking at the=C2=A0 code, there are significant=
 differences between the header format in=C2=A0 3.15 and what=E2=80=99s in =
the 4.0 spec. I think I understand it from the code, but if there=E2=80=99s=
 a doc with more detail
 or explanation, that would be useful. <br>
2.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Is there a maximum payload size for =
a CHDR data packet=C2=A0=C2=A0</div>
<div><br>
</div>
<div>Jeff<br>
</div>
<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4007353540409346430gmail-m_-7685357467159058153divRplyFw=
dMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" style=3D"font-size:11p=
t" color=3D"#000000"><b>From:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jo=
nathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&=
gt;<br>
<b>Sent:</b> Friday, December 11, 2020 4:47:57 PM<br>
<b>To:</b> Hodges, Jeff<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] RFNoC passing metadata on the dataplane</f=
ont>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Jeff,
<div><br>
</div>
<div>RFNoC3 / UHD 3.15 does not support metadata. That is a new feature in =
RFNoC4 / UHD 4.0, so option 2 is not possible.</div>
<div><br>
</div>
<div>If you want to send out metadata in RFNoC3, I would suggest prepending=
 it to packets you send to AXI wrapper. You can still use SIMPLE_MODE as lo=
ng as you are producing a packet for every packet consumed. The different i=
nput/output packet lengths do not
 matter as AXI wrapper internally calculates the output packet length and u=
pdates the header automatically.</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 11, 2020 at 3:48 PM Hodge=
s, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_4007353540409346430gmail-m_-7685357467159058153gmail-m_-=
3086681405321088638gmail-m_2884275641335174869divtagdefaultwrapper" style=
=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-seri=
f" dir=3D"ltr">
<p>I meant rfnoc_create_verilog.py<br>
</p>
<p><br>
</p>
<p><a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/utils/r=
fnoc_blocktool/rfnoc_create_verilog.py" id=3D"gmail-m_4007353540409346430gm=
ail-m_-7685357467159058153gmail-m_-3086681405321088638gmail-m_2884275641335=
174869LPlnk889110" target=3D"_blank">https://github.com/EttusResearch/uhd/b=
lob/master/host/utils/rfnoc_blocktool/rfnoc_create_verilog.py</a></p>
<p><br>
</p>
<p>jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4007353540409346430gmail-m_-7685357467159058153gmail-m_-=
3086681405321088638gmail-m_2884275641335174869divRplyFwdMsg" dir=3D"ltr">
<font face=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#00000=
0"><b>From:</b> Hodges, Jeff<br>
<b>Sent:</b> Friday, December 11, 2020 3:44:41 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> RFNoC passing metadata on the dataplane</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_4007353540409346430gmail-m_-7685357467159058153gmail-m_-=
3086681405321088638gmail-m_2884275641335174869divtagdefaultwrapper" style=
=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-seri=
f" dir=3D"ltr">
<p>I&#39;d like to pass metadata over the dataplane using the available spa=
ce in the CHDR header.=C2=A0 However, I cannot find an easy way to do this =
using UHD3.15.</p>
<p><br>
</p>
<p>I&#39;ve identified two possible approaches but I&#39;m not sure either =
will work:<br>
(1) Set AXI_Wrapper (Simple_Mode =3D0) to require user provided CHDR header=
. It&#39;s unclear how to provide the header, and if this can be modified q=
uickly.</p>
<p>(2) Expose the AXI-Stream CHDR interface the way UHD4.0 does it:<br>
</p>
<p>In UHD4.0 the verilog_image_builder.py includes the options to expose HD=
L interface:</p>
<p></p>
<div>o Definition: Which HDL interface to expose<br>
o Options: =E2=80=9CAXI-Stream CHDR=E2=80=9D (axis_chdr), =E2=80=9CAXI-Stre=
am Payload Context=E2=80=9D (axis_pyld_ctxt), or =E2=80=9CAXI-Stream Data=
=E2=80=9D (axis_data)</div>
<div><br>
</div>
<div>If Option (2) is the recommended, can I just copy the code from verilo=
g_image_builder.py TEMPLATE such as below, or were other changes made to ma=
ke it incompatible with 3.15?</div>
<div><br>
</div>
<div>
<div>=C2=A0%if config[&#39;data&#39;][&#39;fpga_iface&#39;] =3D=3D &quot;ax=
is_pyld_ctxt&quot;:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
<br>
</div>
<div>assign axis_data_clk =3D ${config[&#39;data&#39;][&#39;clk_domain&#39;=
]}_clk;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0
<br>
</div>
<div>assign axis_data_rst =3D ${config[&#39;data&#39;][&#39;clk_domain&#39;=
]}_rst;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<br>
=C2=A0&lt;%include file=3D&quot;/modules/axis_pyld_ctxt_modules_template.ma=
ko&quot;/&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </div>
<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Thanks,</div>
<div><br>
</div>
<div>Jeff<br>
</div>
<div><br>
</div>
<div><br>
</div>
<br>
<p></p>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--000000000000d20d4105b68dd60a--


--===============6836420983525973700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6836420983525973700==--

