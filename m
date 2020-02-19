Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03330164E24
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2020 19:54:54 +0100 (CET)
Received: from [::1] (port=42044 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4UUj-00067V-DY; Wed, 19 Feb 2020 13:54:49 -0500
Received: from mail-il1-f175.google.com ([209.85.166.175]:39427)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <alvaropr97@gmail.com>)
 id 1j4UUf-0005zS-IT
 for usrp-users@lists.ettus.com; Wed, 19 Feb 2020 13:54:45 -0500
Received: by mail-il1-f175.google.com with SMTP id f70so21484719ill.6
 for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2020 10:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rZUSy6kcBun6YGra/pmC1iitigdokK6iBhJCNfB8WVM=;
 b=hgCRbGkRa+q6n6rigf3CEBuC7/EALXNigawd+6+7BqhMWNITYXUvjm3XJIkQPv8ne2
 KzuLC/bUK/Hvg2XZasLmrQQswr2h3UjLwOSjIuUDaP0chsktQR50B5lKVjiCZWzd1vim
 v8FnJgVKHgE3gtdToTnm2/Bn8DlOmTn9OiULRUCtw22Mb2EnMXyHYkHaaC2QoI+tQkTu
 NBbenDI0HmwJWWU0eWNA2N6fgwojn57MyoJP5jtcx20z7AR40ZUxAMFcbjKAvYt8I+ac
 q4XxAEtVEZICxI+wcNNBh60U5KVb1Y4H/Ew7CyBYEEYd+2BH810hmCCOsoCKY2ls7CcT
 H0fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rZUSy6kcBun6YGra/pmC1iitigdokK6iBhJCNfB8WVM=;
 b=MwJ1aMOhKnxbcUbvE2XcEbLA81n1FNkm6JZ2/zBsaHI37txz7xc6T297Pqbj5Y9Y7k
 ikEW935hYsi2pmy8LWm52EFwD4S27kkBixbd+++2lAsDVmukmMcInJSP0CYCNr8FQ2dQ
 dtsFdseii6JztDME2Ug5SV8UUtkXwwic77jOwB48rqc33HtDLrCj+CmkHT1syYGJ6Tyf
 ugQ/yHdNr/xghiRXxPRXURjeBIpdHQu0eg+utqKeePHdCOCLw98ILTWCOq7zPNcJElPA
 3PxUoBfHoWrdWQaXir4EelbHiPh5gQc7+pt1dehGXZfCpFSKf42lU3ocieVtIBRp8gNG
 EU2g==
X-Gm-Message-State: APjAAAVXmjfnqdG+u9OFCN1yRK8HjxSkjT8U4En0FdfvqWYK/fHsA2dh
 z6yFkFMhCFFV252xTU1ES2l2waAxDwIiwre59Jiy5IcEBg==
X-Google-Smtp-Source: APXvYqx+n8Iqpv8Se47MbHMJWsQp7e+g85cTzTyg1pkMtsXqChXLo5IZZZteHB7ChUlKusq3/mpFOlltWZsNDpND3XM=
X-Received: by 2002:a92:d7c6:: with SMTP id g6mr22718964ilq.37.1582138445032; 
 Wed, 19 Feb 2020 10:54:05 -0800 (PST)
MIME-Version: 1.0
References: <CAAZMsC3YHUe0gTn8eqoDJP_L9nU-b7qkxWVrc1CHq11RDPN+nA@mail.gmail.com>
 <5E4D7CD2.4050102@gmail.com>
In-Reply-To: <5E4D7CD2.4050102@gmail.com>
Date: Wed, 19 Feb 2020 19:53:52 +0100
Message-ID: <CAAZMsC1pUq22iiHVHAvGjETvdYDActPOVOGruR=dKLgbh535Gg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] GNU Radio UHD Blocks Resolution
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
From: Alvaro Pendas via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alvaro Pendas <alvaropr97@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============6686093571129178532=="
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

--===============6686093571129178532==
Content-Type: multipart/alternative; boundary="0000000000000071f2059ef250cd"

--0000000000000071f2059ef250cd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus thank your for your answer,

First of all, you are right, the range is -1 to 1 (instead of 0 to 1 as I
said before). So, for example, in the receiving part, the values you get
out of the UHD Source have a linear relationship with the voltage of the
analog signal, but I understand there is no easy way to calculate that
level with the only information of the GNU Radio samples. Is that correct?

El mi=C3=A9., 19 feb. 2020 a las 19:22, Marcus D. Leech via USRP-users (<
usrp-users@lists.ettus.com>) escribi=C3=B3:

> On 02/19/2020 12:01 PM, Alvaro Pendas via USRP-users wrote:
> > Hello,
> > I am using GNU Radio and the USRP B200. I have noticed that for the
> > GNU block UHD: USRP Sink, the values you pass to the block must be in
> > the range 0 to 1. I guess that means if you do not want to lose
> > resolution you must ensure that you use the full range, that is to
> > say, your minimum is 0 or close to 0, and your max is 1 or close to 1.
> > Am I correct?
> >
> > On the other hand, what are the meaning of the values produce by the
> > block UHD: USRP Source? They must be related to the signal power, but
> > I am not sure about their range. Is the minimum value that block can
> > produce the min of the ADC output, and the max, the max of the ADC
> > output? With the USRP B200 the ADC resolution is 12 bits, are the min
> > and the max always set with the same value, or does it depend on the
> > USRP configuration?
> >
> > I am using GNU Radio right now, but probably, just knowing how this
> > works with UHD would be enough to understand the rest.
> >
> > Thank you for your time,
> >
> > Alvaro
> >
> Gnu radio generally likes to have baesband data streams scaled into
> {-1.0,+1.0} which are linearly related to instantaneous voltages at
>    the antenna of the hardware.
>
> To a first approximation, a value near +1.0 or -1.0 will drive the ADC
> to its maximum +/- value.  But that's only an approximation, since the
>    signal is processed a fair amount (linearly) prior to reaching the
> ADC/DAC, and with analog hardware there's no way of ensuring that
>    a max value wont' over-drive the analog hardware.
>
> Power of a sinusoidal signal is proportional to the  I*I + Q*Q --
> remember we're dealing with *voltages* here, so ohms law applies...
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000071f2059ef250cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus thank your for your answer,</div><div><br></di=
v><p style=3D"color:rgb(14,16,26);background:transparent none repeat scroll=
 0% 0%;margin-top:0pt;margin-bottom:0pt"><span style=3D"color:rgb(14,16,26)=
;background:transparent none repeat scroll 0% 0%;margin-top:0pt;margin-bott=
om:0pt">First
 of all, you are right, the range is -1 to 1 (instead of 0 to 1 as I=20
said before). So, for example, in the receiving part, the values you get
 out of the UHD Source have</span><strong style=3D"color:rgb(14,16,26);back=
ground:transparent none repeat scroll 0% 0%;margin-top:0pt;margin-bottom:0p=
t"><span style=3D"color:rgb(14,16,26);background:transparent none repeat sc=
roll 0% 0%;margin-top:0pt;margin-bottom:0pt">=C2=A0</span></strong><span st=
yle=3D"color:rgb(14,16,26);background:transparent none repeat scroll 0% 0%;=
margin-top:0pt;margin-bottom:0pt">a
 linear relationship with the voltage of the analog signal, but I=20
understand there is no easy way to calculate that level with the only=20
information of the GNU Radio samples. Is that correct?</span></p></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=
=A9., 19 feb. 2020 a las 19:22, Marcus D. Leech via USRP-users (&lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;) =
escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n 02/19/2020 12:01 PM, Alvaro Pendas via USRP-users wrote:<br>
&gt; Hello,<br>
&gt; I am using GNU Radio and the USRP B200. I have noticed that for the <b=
r>
&gt; GNU block UHD: USRP Sink, the values you pass to the block must be in =
<br>
&gt; the range 0 to 1. I guess that means if you do not want to lose <br>
&gt; resolution you must ensure that you use the full range, that is to <br=
>
&gt; say, your minimum is 0 or close to 0, and your max is 1 or close to 1.=
 <br>
&gt; Am I correct?<br>
&gt;<br>
&gt; On the other hand, what are the meaning of the values produce by the <=
br>
&gt; block UHD: USRP Source? They must be related to the signal power, but =
<br>
&gt; I am not sure about their range. Is the minimum value that block can <=
br>
&gt; produce the min of the ADC output, and the max, the max of the ADC <br=
>
&gt; output? With the USRP B200 the ADC resolution is 12 bits, are the min =
<br>
&gt; and the max always set with the same value, or does it depend on the <=
br>
&gt; USRP configuration?<br>
&gt;<br>
&gt; I am using GNU Radio right now, but probably, just knowing how this <b=
r>
&gt; works with UHD would be enough to understand the rest.<br>
&gt;<br>
&gt; Thank you for your time,<br>
&gt;<br>
&gt; Alvaro<br>
&gt;<br>
Gnu radio generally likes to have baesband data streams scaled into <br>
{-1.0,+1.0} which are linearly related to instantaneous voltages at<br>
=C2=A0 =C2=A0the antenna of the hardware.<br>
<br>
To a first approximation, a value near +1.0 or -1.0 will drive the ADC <br>
to its maximum +/- value.=C2=A0 But that&#39;s only an approximation, since=
 the<br>
=C2=A0 =C2=A0signal is processed a fair amount (linearly) prior to reaching=
 the <br>
ADC/DAC, and with analog hardware there&#39;s no way of ensuring that<br>
=C2=A0 =C2=A0a max value wont&#39; over-drive the analog hardware.<br>
<br>
Power of a sinusoidal signal is proportional to the=C2=A0 I*I + Q*Q -- <br>
remember we&#39;re dealing with *voltages* here, so ohms law applies...<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000071f2059ef250cd--


--===============6686093571129178532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6686093571129178532==--

