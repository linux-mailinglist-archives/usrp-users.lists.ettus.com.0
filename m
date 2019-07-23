Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CB8718AE
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 14:52:08 +0200 (CEST)
Received: from [::1] (port=42182 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpuH0-0003hD-89; Tue, 23 Jul 2019 08:52:06 -0400
Received: from mail-ed1-f48.google.com ([209.85.208.48]:33741)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <daniel.jepson@ettus.com>)
 id 1hpuGw-0003Xw-Aj
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 08:52:02 -0400
Received: by mail-ed1-f48.google.com with SMTP id i11so43782511edq.0
 for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2019 05:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2tX0ptti5tRZaxsCQwN+0PWxt7NefDshjE4jkgSfIeA=;
 b=kBwJLbfeISbUuSuLDSQY3GomBruw0kMN7mfNzkmG6/VbGcC1qbgeKQbwCjcHKsFBYq
 KtvqqRSRqdyxJWywwi31pdhoGT2zElMeN+zt3vxLZbq8VzBnTGkhPZYUd0Ki4sOp51OS
 ifj8IX8Z3HR4LQcQTMO9zJq8ge2bxW3+kliX3tcRf/rXStjh+UUZUT4U1uwfN1BMOpJf
 VxGFCsd+2Gsw/S2qa/OHOXO+GQ0pYwnUzYE/TUmLbHfwfoibV9YvN6rHO/LlCUR8GvLg
 1aMFu0oPG1pDArdPNONOlxLvLEEGtLja5k/BlhWn1OErOCU32c9Jc0I0K22Tr9+OKdBT
 fcRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2tX0ptti5tRZaxsCQwN+0PWxt7NefDshjE4jkgSfIeA=;
 b=rqWFHlc37UjeaDfhu+rnXIVNRdeGgG7XkqsNCxpMRrEDVGsoVkWnGXrF3huMd3tuM9
 ZLnZKb98HlRAaTq/Zh4qy1IdWbygmkBaglp/Qs49rFV697OM4Hpxt3kolGqFsPBIeB47
 16mAsabZgc/zV/vTgS1h28cpmCkx+n84CPHQG85mU/eaN3ZbA+1WRzGROmO/SZs/bXIg
 oLYRDHPyqovuVkI+qMixx+jtqPuyxmvmhWjEfBPQWUrbW9so65OjXZLTcmIsWI/Tgv8a
 e13SfqvPbSKbcT7VHYPZ2qGgr/1G228NF5p0WSailLZAn7ZmyNqXBIEL8KUoPGms1gM7
 B8gw==
X-Gm-Message-State: APjAAAX50P1VHQ66znZJoEHMFBphMnFrVcWnxoqXC1CqR+z9S2TtkJYw
 far8jPnpqzDn2hLeVIAa+bVM5sHyTQNAMWTV5FD1fMvL
X-Google-Smtp-Source: APXvYqxOsKQ0+A/B2M/wV9w0uNQXuYMK7Brsy/V6rxwDRyWOyAgHp/7S6wcW6n6CHSgzEXjXj+RjD7gehFY1n1EHpx8=
X-Received: by 2002:a50:f4dd:: with SMTP id v29mr65298147edm.246.1563886281212; 
 Tue, 23 Jul 2019 05:51:21 -0700 (PDT)
MIME-Version: 1.0
References: <CA+Zwmn6G=g4J+oScOBgErwvcuavuGayc=AixhanKUvFRD=D_9A@mail.gmail.com>
 <5d3635b7.1c69fb81.b6f0a.98d9@mx.google.com>
In-Reply-To: <5d3635b7.1c69fb81.b6f0a.98d9@mx.google.com>
Date: Tue, 23 Jul 2019 07:51:10 -0500
Message-ID: <CA+Zwmn4fT7sB3KHSLcPR4DWy9xrcTNKFsbnxq=3OiEONJLs4fw@mail.gmail.com>
To: m2wagner <m2wagner@eng.ucsd.edu>
Subject: Re: [USRP-users] Fwd: Re: Digital TV Clock recovery using N310 and
 GNUradio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Daniel Jepson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Jepson <daniel.jepson@ettus.com>
Cc: Usrp Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2705350950854477629=="
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

--===============2705350950854477629==
Content-Type: multipart/alternative; boundary="00000000000042d521058e58a600"

--00000000000042d521058e58a600
Content-Type: text/plain; charset="UTF-8"

Sounds good. I'll allow others to comment on the GNURadio side of things.
Let me know if you have any specific HW concerns and I can chime in.

-Daniel

On Mon, Jul 22, 2019 at 5:17 PM m2wagner via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
> Hey Daniel,
>
> Right now I'm setting an externally generated clock to a nearby frequency
> and recording the data to file for later processing. I'd like the LOs to be
> disciplined to the recovered clock (I have a clock splitter already). I
> suppose I'm most curious to see what GNUradio blocks people have had
> success with in similar applications
>
> -Mark
>
> Sent from my Verizon, Samsung Galaxy smartphone
>
> -------- Original message --------
> From: Daniel Jepson <daniel.jepson@ettus.com>
> Date: 7/22/19 3:00 PM (GMT-08:00)
> To: Mark Wagner <m2wagner@eng.ucsd.edu>
> Cc: Usrp Users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Digital TV Clock recovery using N310 and
> GNUradio
>
> Hi Mark,
>
> A few questions: Is your clock recovery algorithm running in the FPGA? Do
> you require the sample clock/LOs to be disciplined to this recovered clock?
>
> While the N310 does not have a dedicated clock output port, if the
> recovered clock is internal to the FPGA you can transmit a copy of it out
> the front panel GPIO port and (with a bit of creativity) possibly cable it
> into another N310. Just watch your voltage level compatibility.
>
> -Daniel
>
> On Mon, Jul 22, 2019 at 4:38 PM Mark Wagner via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hey all,
>>
>> I'd like to recover the clock tone of a digital TV signal on one USRP
>> N310 and use it as the clock input to another N310. Does anyone have
>> experience doing something like this? I could use some pointers.
>>
>> -Mark
>>
>> --
>> Mark Wagner
>> University of California San Diego
>> Electrical and Computer Engineering
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> --
>
> Daniel Jepson
>
> Digital Hardware Engineer
>
> National Instruments
>
>
>
> O: +1.512.683.6163
>
> daniel.jepson@ni.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 

Daniel Jepson

Digital Hardware Engineer

National Instruments



O: +1.512.683.6163

daniel.jepson@ni.com

--00000000000042d521058e58a600
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sounds good. I&#39;ll allow others to comment on the GNURa=
dio side of things. Let me know if you have any specific HW concerns and I =
can chime in.<div><br></div><div>-Daniel</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 22, 2019 at 5:17 =
PM m2wagner via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div><div><br></div><div><br></div><div><font f=
ace=3D"sans-serif">Hey Daniel,</font></div><div><font face=3D"sans-serif"><=
br></font></div><div><font face=3D"sans-serif">Right now I&#39;m setting an=
 externally generated clock to a nearby frequency and recording the data to=
 file for later processing. I&#39;d like the LOs to be disciplined to the r=
ecovered clock (I have a clock splitter already). I suppose I&#39;m most cu=
rious to see what GNUradio blocks people have had success with in similar a=
pplications</font></div><div><font face=3D"sans-serif"><br></font></div><di=
v><font face=3D"sans-serif">-Mark</font></div><div><br></div><div id=3D"gma=
il-m_-5857751665700894983composer_signature"><div style=3D"font-size:85%;co=
lor:rgb(87,87,87)" dir=3D"auto">Sent from my Verizon, Samsung Galaxy smartp=
hone</div></div><div><br></div><div style=3D"font-size:100%;color:rgb(0,0,0=
)"><div>-------- Original message --------</div><div>From: Daniel Jepson &l=
t;<a href=3D"mailto:daniel.jepson@ettus.com" target=3D"_blank">daniel.jepso=
n@ettus.com</a>&gt; </div><div>Date: 7/22/19  3:00 PM  (GMT-08:00) </div><d=
iv>To: Mark Wagner &lt;<a href=3D"mailto:m2wagner@eng.ucsd.edu" target=3D"_=
blank">m2wagner@eng.ucsd.edu</a>&gt; </div><div>Cc: Usrp Users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; </div><div>Subject: Re: [USRP-users] Digital TV Clock reco=
very using N310 and GNUradio </div><div><br></div></div><div dir=3D"ltr">Hi=
 Mark,<div><br></div><div>A few questions: Is your clock recovery algorithm=
 running in the FPGA? Do you require the sample clock/LOs to be disciplined=
 to this recovered clock?</div><div><br></div><div>While the N310 does not =
have a dedicated clock output port, if the recovered clock is internal to t=
he FPGA you can transmit a copy of it out the front panel GPIO port and (wi=
th a bit of creativity) possibly cable it into another N310. Just watch you=
r voltage level compatibility.</div><div><br></div><div>-Daniel</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Jul 22, 2019 at 4:38 PM Mark Wagner via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hey all,<div><br></div><div>I&#39;d like to recover the clock=
 tone of a digital TV signal on one USRP N310 and use it as the clock input=
 to another N310. Does anyone have experience doing something like this? I =
could use some pointers.</div><div><br></div><div>-Mark<br clear=3D"all"><d=
iv><br></div>-- <br><div dir=3D"ltr" class=3D"gmail-m_-5857751665700894983g=
mail-m_-5403488867902592564gmail_signature"><div dir=3D"ltr"><div><div>Mark=
 Wagner<br></div>University of California San Diego<br></div>Electrical and=
 Computer Engineering<br>=C2=A0<br></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-5857751665700894983gmail_signature"><div dir=3D"ltr"><p>=
<a name=3D"m_-5857751665700894983_SignatureSanitizer_SafeHtmlFilter__MailAu=
toSig"><span style=3D"color:black">Daniel
Jepson</span></a></p>

<p><span style=3D"color:black">Digital Hardware Engineer</span></p>

<p><span style=3D"color:black">National Instruments</span></p>

<p><span style=3D"color:black">=C2=A0</span></p>

<p><span style=3D"color:black">O: +1.512.683.6163</span></p>

<p><span style=3D"color:black"><a href=3D"mailto:daniel.jepson@ni.com" targ=
et=3D"_blank">daniel.jepson@ni.com</a></span></p></div></div>
</div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><p><a name=3D"SignatureSanitize=
r_SafeHtmlFilter__MailAutoSig"><span style=3D"color:black">Daniel
Jepson</span></a></p>

<p><span style=3D"color:black">Digital Hardware Engineer</span></p>

<p><span style=3D"color:black">National Instruments</span></p>

<p><span style=3D"color:black">=C2=A0</span></p>

<p><span style=3D"color:black">O: +1.512.683.6163</span></p>

<p><span style=3D"color:black"><a href=3D"mailto:daniel.jepson@ni.com" targ=
et=3D"_blank">daniel.jepson@ni.com</a></span></p></div></div>

--00000000000042d521058e58a600--


--===============2705350950854477629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2705350950854477629==--

