Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 026AA14A65A
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 15:40:58 +0100 (CET)
Received: from [::1] (port=50202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iw5ZP-00061Z-Ep; Mon, 27 Jan 2020 09:40:55 -0500
Received: from mail-io1-f68.google.com ([209.85.166.68]:35780)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sammywelschen@gmail.com>)
 id 1iw5ZL-0005xd-Iq
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 09:40:51 -0500
Received: by mail-io1-f68.google.com with SMTP id h8so10221115iob.2
 for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2020 06:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=tMEGgroFgYFLxmQ7FNohwbhPnOz1AXbWu9jq9HnfiSI=;
 b=A3Wnvv1x/XYRBbUMtXYvKQkn60DpAQVXIh1PkCkQSedwM3RXnKkGfeEEwF4GzrMwpB
 izpzkad+5ix9RJiEjyDz0QRbErVZbPVZOlqlhEzccWXdlDYyipfjuH3cg4kXABJvsGsf
 9l8cdSlyMIM6YOIT659ZzFu3CcGblInt4MDMYCy1dJssuhIADmx1C0d5jpU88m3hVGmS
 BAtKSOMB38B8HRdrzTgkCPOUuigLd8z7iGOvc12u3HHGLVZserT9JXe2tzjFtguh37lQ
 lLj2VB2Q+uvpiS/WN2Z3e/hKQzMJivZ43nIbCI93kbHpDTIKtLY7re1HtdMEnoDCdDJU
 q1jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=tMEGgroFgYFLxmQ7FNohwbhPnOz1AXbWu9jq9HnfiSI=;
 b=OtOs+ZN6V2176xk7Kqy+AxmR2at06NkC33bNJpARzS5UKQb2aIYhRoKYtovk74Wsaz
 j5xN4wzfcGJFdm5IpoI8DSJUd7Uhade7I7Spi1Z2c1RsxDFb8+EXSkSGVJswbSkB8ACr
 eX5i8/jidQuS0+0u1S2P/qprGEkFJ8iIPjk5sfOUk02CyEjae7D1JUYqvx58F4mJNKfw
 Td8MyjanlE/hvXJIMR7M6yjhtndKWZz171KZgoC9+zcUK3aovxojUGkXpooIj53j855I
 E6kh4M60lDPISt9o6WkAw76sEwnyCJGeBLWRNvs08dX+ND4WYUsHdGz11Ny5aVbRHaHB
 LB9g==
X-Gm-Message-State: APjAAAU9/teQXozsVC7c6ec41qyFgvAhlv9I0kKEra6CcBcsy+XsBR2A
 5PtOwy7/UXe57iyywNpW7pnhlW9Ugbq3r9QKR2t/1Q==
X-Google-Smtp-Source: APXvYqzQq6WTjcZsDbhfhfdJP0w8vnRX8GYTQ0ADdQI3GU/x4M6+x8LtNmolW+WLjcaoJ0t74E23cZ5X8Vd8OUnR1cc=
X-Received: by 2002:a5d:9707:: with SMTP id h7mr13364757iol.112.1580136010484; 
 Mon, 27 Jan 2020 06:40:10 -0800 (PST)
MIME-Version: 1.0
References: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
 <5E2DD2CA.60502@gmail.com>
 <CAE6G02_gbpWZENFyB0EuGdDiGfWKBOitqE0VamkNRuqPTd_MgA@mail.gmail.com>
 <1eae252bad4344f2b296e8bb4fb0d278@dlr.de>
In-Reply-To: <1eae252bad4344f2b296e8bb4fb0d278@dlr.de>
Date: Mon, 27 Jan 2020 15:39:54 +0100
Message-ID: <CAE6G028jQc8Fd8U8-EmTCCZwyKjN5+MJGcEJs5FKvm1PyrNofw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] DOA with N310 or X310+TwinRX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sammy Welschen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sammy Welschen <sammywelschen@gmail.com>
Content-Type: multipart/mixed; boundary="===============7992296740971898631=="
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

--===============7992296740971898631==
Content-Type: multipart/alternative; boundary="0000000000009a12de059d201536"

--0000000000009a12de059d201536
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the information Robert! Isn't it 6 GHz? However, 4 GHz would
also be sufficient for me.

How many channels does your system have?  I suppose you use some algorithm
for phase calibration after power cycling? I plan to do the same, so the
180 deg ambiguity should be manageable.

I looked at the N32x, however, they cost twice as much and I dont't plan on
using 200 MHz of bandwidth. If I have an external LO signal I can feed it
to the N310, so the only difference between N310 and N32x in this regard
would be that I need to generate the LO externally when using the N310,
right?

<Robert.Poehlmann@dlr.de> schrieb am Mo., 27. Jan. 2020, 14:42:

> We use the N310 for DoA estimation, however:
>
> -          you are limited to 4 GHz
>
> -          after power-cycling you get a 180=C2=B0 ambiguity between the =
two
> radios (I do not know if this could also happen when you just change the =
LO
> frequency)
>
>
>
> If you want to have >4 channels, have a look at the new N320/N321. No
> experience with those, but apparently they can do LO distribution.
>
>
>
> Also take into account if maybe later in the project you want to be able
> to transmit, which you cannot do with TwinRX.
>
>
>
> Regards,
>
> Robert
>
>
>
> *From:* USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On Behalf
> Of *Sammy Welschen via USRP-users
> *Sent:* Monday, January 27, 2020 2:19 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] DOA with N310 or X310+TwinRX
>
>
>
> Thank you Marcus! So the N310 would be the way to go? I was unsure since
> the TwinRX is recommended for phase coherent applications.
>
>
>
> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com> schrieb am
> So., 26. Jan. 2020, 18:57:
>
> On 01/25/2020 11:43 AM, Sammy Welschen via USRP-users wrote:
> > Dear all,
> >
> > I am planning a system with 5-10 channels that is capable of DOA
> > estimation.
> >
> > Concerning the calibration of the resulting array, would there be a
> > difference between a system made up of N310 and one made up of X310
> > with TwinRX boards? Would there be other important differences that
> > influence estimation performance?
> >
> > As I understand it, the TwinRX allows LO sharing between the boards in
> > a single X310, but this would not help me if I have two or three X310.
> > On the other hand, the N310s could be connected to a shared LO.
> >
> > Are the following thoughts correct?
> >
> > Suppose I turn on my system. Then I have to calibrate phase offsets
> > between channels in any case. Now I change the center frequency. If I
> > have N310s without shared LO, I have to recalibrate. Same for the
> > X310s, since LOs are shared only internally. If I have N310s with a
> > shared LO, I do not have to recalibrate.
> >
> > If I restart the system, I have to recalibrate in any case.
> >
> > The devices would by synchronized with PPS in any case and with the 10
> > MHz reference if no external LO is used.
> >
> > What is the better choice for DOA estimation (N310 or X310 with TwinRX
> > or something different)?
> >
> > Thank you very much
> >
> > Sammy
> >
> >
> Sammy:
>
> Your characterization of the two scenarios is correct.
>
> There may be some folks on this list who have implemented DOA schemes,
> but likely few-to-none who have done it on both X310 and N310
>    and can comment on the differences they encountered.
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000009a12de059d201536
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Thank you for the information Robert! Isn&#39;t it 6=
 GHz? However, 4 GHz would also be sufficient for me.=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">How many channels does your system ha=
ve?=C2=A0 I suppose you use some algorithm for phase calibration after powe=
r cycling? I plan to do the same, so the 180 deg ambiguity should be manage=
able.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">I looked at =
the N32x, however, they cost twice as much and I dont&#39;t plan on using 2=
00 MHz of bandwidth. If I have an external LO signal I can feed it to the N=
310, so the only difference between N310 and N32x in this regard would be t=
hat I need to generate the LO externally when using the N310, right?</div><=
div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"lt=
r" class=3D"gmail_attr"> &lt;<a href=3D"mailto:Robert.Poehlmann@dlr.de">Rob=
ert.Poehlmann@dlr.de</a>&gt; schrieb am Mo., 27. Jan. 2020, 14:42:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_7552589660358367065WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">We use the N310 for DoA e=
stimation, however:<u></u><u></u></span></p>
<p class=3D"m_7552589660358367065MsoListParagraph"><u></u><span style=3D"fo=
nt-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color=
:#1f497d"><span>-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">you are limited to 4=
 GHz
<u></u><u></u></span></p>
<p class=3D"m_7552589660358367065MsoListParagraph"><u></u><span style=3D"fo=
nt-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color=
:#1f497d"><span>-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">after power-cycling =
you get a 180=C2=B0 ambiguity between the two radios (I do not know if this=
 could also happen when you just change the LO frequency)<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">If you want to have &gt;4=
 channels, have a look at the new N320/N321. No experience with those, but =
apparently they can do LO distribution.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Also take into account if=
 maybe later in the project you want to be able to transmit, which you cann=
ot do with TwinRX.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regards,<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Robert<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> USRP-use=
rs [mailto:<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"=
_blank" rel=3D"noreferrer">usrp-users-bounces@lists.ettus.com</a>]
<b>On Behalf Of </b>Sammy Welschen via USRP-users<br>
<b>Sent:</b> Monday, January 27, 2020 2:19 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] DOA with N310 or X310+TwinRX<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Thank you Marcus! So the N310 would be the way to go=
? I was unsure since the TwinRX is recommended for phase coherent applicati=
ons.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Marcus D. Leech via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-user=
s@lists.ettus.com</a>&gt; schrieb am So., 26. Jan. 2020, 18:57:<u></u><u></=
u></p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal">On 01/25/2020 11:43 AM, Sammy Welschen via USRP-user=
s wrote:<br>
&gt; Dear all,<br>
&gt;<br>
&gt; I am planning a system with 5-10 channels that is capable of DOA <br>
&gt; estimation.<br>
&gt;<br>
&gt; Concerning the calibration of the resulting array, would there be a <b=
r>
&gt; difference between a system made up of N310 and one made up of X310 <b=
r>
&gt; with TwinRX boards? Would there be other important differences that <b=
r>
&gt; influence estimation performance?<br>
&gt;<br>
&gt; As I understand it, the TwinRX allows LO sharing between the boards in=
 <br>
&gt; a single X310, but this would not help me if I have two or three X310.=
 <br>
&gt; On the other hand, the N310s could be connected to a shared LO.<br>
&gt;<br>
&gt; Are the following thoughts correct?<br>
&gt;<br>
&gt; Suppose I turn on my system. Then I have to calibrate phase offsets <b=
r>
&gt; between channels in any case. Now I change the center frequency. If I =
<br>
&gt; have N310s without shared LO, I have to recalibrate. Same for the <br>
&gt; X310s, since LOs are shared only internally. If I have N310s with a <b=
r>
&gt; shared LO, I do not have to recalibrate.<br>
&gt;<br>
&gt; If I restart the system, I have to recalibrate in any case.<br>
&gt;<br>
&gt; The devices would by synchronized with PPS in any case and with the 10=
 <br>
&gt; MHz reference if no external LO is used.<br>
&gt;<br>
&gt; What is the better choice for DOA estimation (N310 or X310 with TwinRX=
 <br>
&gt; or something different)?<br>
&gt;<br>
&gt; Thank you very much<br>
&gt;<br>
&gt; Sammy<br>
&gt;<br>
&gt;<br>
Sammy:<br>
<br>
Your characterization of the two scenarios is correct.<br>
<br>
There may be some folks on this list who have implemented DOA schemes, <br>
but likely few-to-none who have done it on both X310 and N310<br>
=C2=A0 =C2=A0and can comment on the differences they encountered.<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div></div>

--0000000000009a12de059d201536--


--===============7992296740971898631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7992296740971898631==--

