Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E73E92DDA77
	for <lists+usrp-users@lfdr.de>; Thu, 17 Dec 2020 22:01:05 +0100 (CET)
Received: from [::1] (port=35894 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kq0OU-0007tW-Mh; Thu, 17 Dec 2020 16:01:02 -0500
Received: from mail-ua1-f51.google.com ([209.85.222.51]:40118)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kq0OR-0007oQ-HS
 for usrp-users@lists.ettus.com; Thu, 17 Dec 2020 16:00:59 -0500
Received: by mail-ua1-f51.google.com with SMTP id y25so95476uaq.7
 for <usrp-users@lists.ettus.com>; Thu, 17 Dec 2020 13:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NfS1vlQ27zqoBFcPni74ThJq7unlVh+7sa3JT0yXBfs=;
 b=l5yeQuEgzCnD+ju4ey6NOiFnMsgTIoqGzBo4kak6+m6dlkHbRCgPlJ51Qdxk7aGQxU
 3M/FnchJt+LXsSa3TGbYpIzo/r8Gwtsu8TbNJGbzjyKkytz0y37QFVMpJ11L6oaL3ktM
 FLgpj8gjGAJ1BxC6gMSNigtOpTZNKMK8/eQopmngtK+qSkHuVoAyHY7LpYpVF0LUeNOb
 daEI4NL5goPh/JapeWJWX6Foo1ZhqAMeBHykRFeecjiFDQMJCoJt9W5kgftvRBDNVpBg
 7TGl8TdosS3GXkEkIzVcdHZVV53jlwJqu1HClRoPr2FL5bn5MUZ5Ev5nxokt0ngoc008
 AURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NfS1vlQ27zqoBFcPni74ThJq7unlVh+7sa3JT0yXBfs=;
 b=M/b+mPS2ee2lQxNaz7vBUBQxqNmIi318otN7128mX/K1L2QzyrLRgoK13AAySS1MxD
 SN23Pls6h78tVTKniLs96Y0fAYXlsyxilTR/kr+Nzls+p8mILBgE8JoTTYcK1UTrCsQL
 4wg5hKix29n4X7uEpT8vCt5l+igunl+rtyj/HJBXPFVNPP5sCWirWrsUVbuPvNID+OmN
 uyM3Xkt89lnC4P/D4o8TaLIEW1Fw60pnrvr5Tw3qwzOxijNpue2S9KpoTVgLh4FNjqQF
 Ww+Rh0ZppB/yD3GouGa8/cJXxB7fOLYIyIGTnvV+IuzhAXU/SLmjbYz3C8Rl8AtM1Q38
 Kpqw==
X-Gm-Message-State: AOAM532UTBfe9/C05GYasU5L2RzHynroB5R3ABlHzN7MnlGV3GJmQSJ7
 faReOqbJy5lCh08G8sMBnI7kGbrt58EwZN43grA25zVmPVHVew==
X-Google-Smtp-Source: ABdhPJycvO5LWCgK7fMnIdy2Jmv7sQT+MOQ6Yw8gw+Wqos+2tGX3cEXjYR9I5P0p+K3bdpnxgxkE54t8pkbpkHr955c=
X-Received: by 2002:a9f:24c7:: with SMTP id 65mr1016704uar.112.1608238818773; 
 Thu, 17 Dec 2020 13:00:18 -0800 (PST)
MIME-Version: 1.0
References: <0de28dac284d443f97212f5559446f66@gtri.gatech.edu>
 <72b3782485534f1c843149b5b70ef955@gtri.gatech.edu>
 <CAL7q81uuY5BK8RGHk0M_Wgo_9gheOzWJ1t=RstwWFAn=zBbS_A@mail.gmail.com>
 <95cdc0110e3446408a8916ac27624629@gtri.gatech.edu>
 <CAL7q81vyqsK-Uryu05uRWg8WB_acv+CLaPmS3e2qhGSxpUDK=w@mail.gmail.com>
 <30b93ba3af734cf5b828bce0862b59c1@gtri.gatech.edu>
In-Reply-To: <30b93ba3af734cf5b828bce0862b59c1@gtri.gatech.edu>
Date: Thu, 17 Dec 2020 15:59:42 -0500
Message-ID: <CAL7q81v0A0MxUJAKPhD9nenayaZU1RC5A2+XWRzq5Uuh0mdZCg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1101727379786804423=="
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

--===============1101727379786804423==
Content-Type: multipart/alternative; boundary="00000000000081dfeb05b6af47ee"

--00000000000081dfeb05b6af47ee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

The m_axis_data_tdata and s_axis_data_tdata signals carry the CHDR packet's
data (usually SC16 samples) only. The tuser signals are for the CHDR
header. For instance, the incoming CHDR packet's header is output on
m_axis_data_tuser (regardless of the state of SIMPLE_MODE). When
SIMPLE_MODE=3D0, the header on s_axis_data_tuser will be used for the
outgoing CHDR packet's header. When SIMPLE_MODE=3D1, the header is handled
automatically by reusing the incoming packet's header. Technically,
SIMPLE_MODE works by storing the incoming packet's header in a FIFO. That
is why when using SIMPLE_MODE you must produce a packet for every packet
consumed, otherwise the FIFO will either overflow or underflow.

Jonathon

On Wed, Dec 16, 2020 at 6:50 PM Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
wrote:

> When  SIMPLE_MODE=3D0 for AXI_WRAPPER, is the header provided as the firs=
t
> data  word (or two data words if the timestamp is used) on
> m_axis_data_tdata?  It seemed redundant since it=E2=80=99s provided on
> m_axis_data_tuser, but the  Header is shown in the waveform on Slide 22 o=
f
> the RFNOC Workshop (Part  2), so I wanted to clarify exactly what the dat=
a
> on m_axis_data_tdata  will be. Also, I assume that this same behavior
> should be mimicked on  s_axis_data_tdata when sending a packet out, but
> again, I wanted to  clarify.
>
>
> Thanks,
>
>
> Jeff
> ------------------------------
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Wednesday, December 16, 2020 12:05:58 AM
> *To:* Hodges, Jeff
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] RFNoC passing metadata on the dataplane
>
> Hi Jeff,
>
>  Is  there a document describing the CHDR header for 3.15? Looking at the
>> code, there are significant differences between the header format in  3.=
15
>> and what=E2=80=99s in the 4.0 spec. I think I understand it from the cod=
e, but if
>> there=E2=80=99s a doc with more detail or explanation, that would be use=
ful.
>
>
> The RFNoC3 CHDR header is described in the UHD 3.15 manual:
> https://files.ettus.com/manual_archive/v3.15.0.0/html/page_rtp.html.
> There is a bit more detail in these slides:
> https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_202008_part_2.pdf
>
>  Is there a maximum payload size for a CHDR data packet
>
>
> Technically it is 64k bytes, but due to FIFO sizing in our devices, you
> should not exceed 7992 bytes / 1998 SC16 samples.
>
> Jonathon
>
> On Tue, Dec 15, 2020 at 11:18 PM Hodges, Jeff <Jeff.Hodges@gtri.gatech.ed=
u>
> wrote:
>
>> Thanks, Jonathan, that is very helpful. Two questions using SIMPLE_MODE=
=3D0
>> and AXI wrapper:
>>
>> 1.       Is  there a document describing the CHDR header for 3.15?
>> Looking at the  code, there are significant differences between the head=
er
>> format in  3.15 and what=E2=80=99s in the 4.0 spec. I think I understand=
 it from
>> the code, but if there=E2=80=99s a doc with more detail or explanation, =
that would
>> be useful.
>> 2.       Is there a maximum payload size for a CHDR data packet
>>
>> Jeff
>>
>> ------------------------------
>> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
>> *Sent:* Friday, December 11, 2020 4:47:57 PM
>> *To:* Hodges, Jeff
>> *Cc:* usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] RFNoC passing metadata on the dataplane
>>
>> Hi Jeff,
>>
>> RFNoC3 / UHD 3.15 does not support metadata. That is a new feature in
>> RFNoC4 / UHD 4.0, so option 2 is not possible.
>>
>> If you want to send out metadata in RFNoC3, I would suggest prepending i=
t
>> to packets you send to AXI wrapper. You can still use SIMPLE_MODE as lon=
g
>> as you are producing a packet for every packet consumed. The different
>> input/output packet lengths do not matter as AXI wrapper internally
>> calculates the output packet length and updates the header automatically=
.
>>
>> Jonathon
>>
>> On Fri, Dec 11, 2020 at 3:48 PM Hodges, Jeff via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> I meant rfnoc_create_verilog.py
>>>
>>>
>>>
>>> https://github.com/EttusResearch/uhd/blob/master/host/utils/rfnoc_block=
tool/rfnoc_create_verilog.py
>>>
>>>
>>> jeff
>>> ------------------------------
>>> *From:* Hodges, Jeff
>>> *Sent:* Friday, December 11, 2020 3:44:41 PM
>>> *To:* usrp-users@lists.ettus.com
>>> *Subject:* RFNoC passing metadata on the dataplane
>>>
>>>
>>> I'd like to pass metadata over the dataplane using the available space
>>> in the CHDR header.  However, I cannot find an easy way to do this usin=
g
>>> UHD3.15.
>>>
>>>
>>> I've identified two possible approaches but I'm not sure either will
>>> work:
>>> (1) Set AXI_Wrapper (Simple_Mode =3D0) to require user provided CHDR
>>> header. It's unclear how to provide the header, and if this can be modi=
fied
>>> quickly.
>>>
>>> (2) Expose the AXI-Stream CHDR interface the way UHD4.0 does it:
>>>
>>> In UHD4.0 the verilog_image_builder.py includes the options to expose
>>> HDL interface:
>>>
>>> o Definition: Which HDL interface to expose
>>> o Options: =E2=80=9CAXI-Stream CHDR=E2=80=9D (axis_chdr), =E2=80=9CAXI-=
Stream Payload Context=E2=80=9D
>>> (axis_pyld_ctxt), or =E2=80=9CAXI-Stream Data=E2=80=9D (axis_data)
>>>
>>> If Option (2) is the recommended, can I just copy the code from
>>> verilog_image_builder.py TEMPLATE such as below, or were other changes =
made
>>> to make it incompatible with 3.15?
>>>
>>>  %if config['data']['fpga_iface'] =3D=3D
>>> "axis_pyld_ctxt":
>>> assign axis_data_clk =3D
>>> ${config['data']['clk_domain']}_clk;
>>> assign axis_data_rst =3D
>>> ${config['data']['clk_domain']}_rst;
>>>  <%include
>>> file=3D"/modules/axis_pyld_ctxt_modules_template.mako"/>
>>>
>>>
>>>
>>> Thanks,
>>>
>>> Jeff
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000081dfeb05b6af47ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>The m_axis_data_tdata and s_ax=
is_data_tdata signals carry the CHDR packet&#39;s data (usually SC16 sample=
s) only. The tuser signals are for the CHDR header. For instance, the incom=
ing CHDR packet&#39;s header is output on m_axis_data_tuser (regardless of =
the state of SIMPLE_MODE). When SIMPLE_MODE=3D0, the header on s_axis_data_=
tuser will be used for the outgoing CHDR packet&#39;s header. When SIMPLE_M=
ODE=3D1, the header is handled automatically by reusing the incoming packet=
&#39;s header. Technically, SIMPLE_MODE works by storing the incoming packe=
t&#39;s=C2=A0header in a FIFO. That is why when using SIMPLE_MODE you must =
produce a packet for every packet consumed, otherwise the FIFO will either =
overflow or underflow.</div><div><br></div><div>Jonathon</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 1=
6, 2020 at 6:50 PM Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gate=
ch.edu">Jeff.Hodges@gtri.gatech.edu</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_300434062891201361divtagdefaultwrapper" style=3D"font-si=
ze:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"l=
tr">
<div id=3D"gmail-m_300434062891201361divtagdefaultwrapper" dir=3D"ltr" styl=
e=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-ser=
if,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoC=
olorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbol=
s">
<p><span id=3D"gmail-m_300434062891201361ms-rterangepaste-start"></span><sp=
an>When=C2=A0 SIMPLE_MODE=3D0 for AXI_WRAPPER, is the header provided as th=
e first data=C2=A0 word (or two data words if the timestamp is used) on m_a=
xis_data_tdata?=C2=A0 It seemed redundant since it=E2=80=99s provided on m_=
axis_data_tuser,
 but the=C2=A0 Header is shown in the waveform on Slide 22 of the RFNOC Wor=
kshop (Part=C2=A0 2), so I wanted to clarify exactly what the data on m_axi=
s_data_tdata=C2=A0 will be. Also, I assume that this same behavior should b=
e mimicked on=C2=A0 s_axis_data_tdata when sending a
 packet out, but again, I wanted to=C2=A0 clarify.</span></p>
<p><span><br>
</span></p>
<p><span>Thanks,</span></p>
<p><span><br>
</span></p>
<p><span>Jeff</span><span id=3D"gmail-m_300434062891201361ms-rterangepaste-=
end"></span><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_300434062891201361divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:=
</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" tar=
get=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, December 16, 2020 12:05:58 AM<br>
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
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<span style=3D"color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif;fo=
nt-size:16px">=C2=A0Is=C2=A0 there a document describing the CHDR header fo=
r 3.15? Looking at the=C2=A0 code, there are significant differences betwee=
n the header format in=C2=A0 3.15 and what=E2=80=99s in the
 4.0 spec. I think I understand it from the code, but if there=E2=80=99s a =
doc with more detail or explanation, that would be useful.</span></blockquo=
te>
<div><br>
</div>
<div>The RFNoC3 CHDR header is described in the UHD 3.15 manual: <a href=3D=
"https://files.ettus.com/manual_archive/v3.15.0.0/html/page_rtp.html" id=3D=
"gmail-m_300434062891201361LPlnk166649" target=3D"_blank">
https://files.ettus.com/manual_archive/v3.15.0.0/html/page_rtp.html</a>. Th=
ere is a bit more detail in these slides:=C2=A0<a href=3D"https://kb.ettus.=
com/images/f/f6/rfnoc3_workshop_slides_202008_part_2.pdf" id=3D"gmail-m_300=
434062891201361LPlnk918472" target=3D"_blank">https://kb.ettus.com/images/f=
/f6/rfnoc3_workshop_slides_202008_part_2.pdf</a></div>
<div><br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<span style=3D"color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif;fo=
nt-size:16px">=C2=A0Is there a maximum payload size for a CHDR data packet<=
/span></blockquote>
<div><br>
</div>
<div>Technically=C2=A0it is 64k bytes, but due to FIFO sizing in our device=
s, you should not exceed 7992 bytes / 1998 SC16 samples.</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 15, 2020 at 11:18 PM Hodg=
es, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" target=3D"_blan=
k">Jeff.Hodges@gtri.gatech.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div id=3D"gmail-m_300434062891201361gmail-m_4007353540409346430gmail-m_-76=
85357467159058153divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;=
color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;A=
pple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Sego=
e UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
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
<div id=3D"gmail-m_300434062891201361gmail-m_4007353540409346430gmail-m_-76=
85357467159058153divRplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0"><b>From:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ett=
us.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
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
<div id=3D"gmail-m_300434062891201361gmail-m_4007353540409346430gmail-m_-76=
85357467159058153gmail-m_-3086681405321088638gmail-m_2884275641335174869div=
tagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);fon=
t-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
<p>I meant rfnoc_create_verilog.py<br>
</p>
<p><br>
</p>
<p><a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/utils/r=
fnoc_blocktool/rfnoc_create_verilog.py" id=3D"gmail-m_300434062891201361gma=
il-m_4007353540409346430gmail-m_-7685357467159058153gmail-m_-30866814053210=
88638gmail-m_2884275641335174869LPlnk889110" target=3D"_blank">https://gith=
ub.com/EttusResearch/uhd/blob/master/host/utils/rfnoc_blocktool/rfnoc_creat=
e_verilog.py</a></p>
<p><br>
</p>
<p>jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_300434062891201361gmail-m_4007353540409346430gmail-m_-76=
85357467159058153gmail-m_-3086681405321088638gmail-m_2884275641335174869div=
RplyFwdMsg" dir=3D"ltr">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0"><b>From:</b> Hodges, Jeff<br>
<b>Sent:</b> Friday, December 11, 2020 3:44:41 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> RFNoC passing metadata on the dataplane</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_300434062891201361gmail-m_4007353540409346430gmail-m_-76=
85357467159058153gmail-m_-3086681405321088638gmail-m_2884275641335174869div=
tagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);fon=
t-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple Color Emoji&quo=
t;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&q=
uot;Android Emoji&quot;,EmojiSymbols">
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
</blockquote>
</div>
</div>
</div>
</div>

</blockquote></div>

--00000000000081dfeb05b6af47ee--


--===============1101727379786804423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1101727379786804423==--

