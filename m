Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BB9164E62
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2020 20:05:38 +0100 (CET)
Received: from [::1] (port=46004 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4Uf7-00072E-PF; Wed, 19 Feb 2020 14:05:33 -0500
Received: from mail-qv1-f42.google.com ([209.85.219.42]:40068)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1j4Uf4-0006k6-D8
 for USRP-users@lists.ettus.com; Wed, 19 Feb 2020 14:05:30 -0500
Received: by mail-qv1-f42.google.com with SMTP id q9so688412qvu.7
 for <USRP-users@lists.ettus.com>; Wed, 19 Feb 2020 11:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=Bx1q6mFAzuAocEBYMkZbqjKPiO4o2sszJYzjOuasKq0=;
 b=rrAUBdqJVUneEe27jQ3GAKXgYws7qny5E+Xn4+Z4eYG6ibj53Tlgn0Loe5ExFW1HZb
 KrzxcYHkfQVvz+SKIgorHt4ra2IkbSHo/bAo1mt+6DfraMGMpNir/G4lsSO3tnZymY2y
 ziB0Bn/iOHqKAuO5ZWptk6SzKoGiCK2KMo5OEWJP24dhbxHNFB3aNYzAO9MkUc6bhidZ
 BrkFvbe9Vj2GBJyca64lyeT+Z9S8pgk9LjN5PyM7sD44Gh89C1PL7AXGJJFsv8J5CP0K
 vUxlHU6HdCf/3JJs9G+W0wAPJC7lwzrSqUPNSGUn7Gp8eT5ni0zv5kvzTHw19D59fcVI
 6zVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Bx1q6mFAzuAocEBYMkZbqjKPiO4o2sszJYzjOuasKq0=;
 b=YESQ8ZErhE+96lUTDpe1CkWmE/yzXQswH5ZC3j8LHDnhflLNeCF6XRRy5hh7tvWF2d
 NHtPdZ84Lfu+sw+pnzaGD22bxg2KbGreMwXDJeaOVWr1VhEuJ2IxtcedehNm5233FWFa
 iReZOLBrk2qAOBRiHmRuLbWwnyXJnTkxAyn9jMdKIJYMzor3u7vT1PbxV5oKiJVgVw0P
 eTxh3cv7+bHJ8SLr69+emAVe4NxB3SlvpVd418XVpWhWSB9MOoIDwC9+IiQfbA+fkX5L
 7NkUXXfFb6xALoNZlxFNHw1eKG8eOvjfDNit+iUUkUeFcXv+0hXRzCcqn6es0828FMgU
 2n2Q==
X-Gm-Message-State: APjAAAUUklz5IMvTk2vmNKABUa6JbOzr8fjCx/ZorxQXgs1Ll7DDNTne
 iD4mpfj31gZXjyyJ22neHzmV0eoCrRc=
X-Google-Smtp-Source: APXvYqzTwVjzpb2ZMR+hnrctALAeMeOH/EH7cqSWF7CSkwlZR+Y09n9JVmxnWnQjeuwvE9rOCl3gUA==
X-Received: by 2002:a0c:edc3:: with SMTP id i3mr22464781qvr.29.1582139089717; 
 Wed, 19 Feb 2020 11:04:49 -0800 (PST)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.gmail.com with ESMTPSA id t12sm312920qkg.95.2020.02.19.11.04.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Feb 2020 11:04:49 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 19 Feb 2020 14:04:48 -0500
Message-Id: <E01AEA46-6030-4BFF-91CE-0535F84D2FF5@gmail.com>
References: <CAAZMsC1pUq22iiHVHAvGjETvdYDActPOVOGruR=dKLgbh535Gg@mail.gmail.com>
In-Reply-To: <CAAZMsC1pUq22iiHVHAvGjETvdYDActPOVOGruR=dKLgbh535Gg@mail.gmail.com>
To: Alvaro Pendas <alvaropr97@gmail.com>
X-Mailer: iPhone Mail (17D50)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============3519129750489761723=="
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


--===============3519129750489761723==
Content-Type: multipart/alternative; boundary=Apple-Mail-F600C22B-745A-4E8F-BC2B-7D5C9F6002A1
Content-Transfer-Encoding: 7bit


--Apple-Mail-F600C22B-745A-4E8F-BC2B-7D5C9F6002A1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Indeed. You=E2=80=99d have to use an external calibration source at several p=
laces over your parameter space (frequency gain sample rate)

Sent from my iPhone

> On Feb 19, 2020, at 1:54 PM, Alvaro Pendas <alvaropr97@gmail.com> wrote:
>=20
> =EF=BB=BF
> Marcus thank your for your answer,
>=20
> First of all, you are right, the range is -1 to 1 (instead of 0 to 1 as I s=
aid before). So, for example, in the receiving part, the values you get out o=
f the UHD Source have a linear relationship with the voltage of the analog s=
ignal, but I understand there is no easy way to calculate that level with th=
e only information of the GNU Radio samples. Is that correct?
>=20
>> El mi=C3=A9., 19 feb. 2020 a las 19:22, Marcus D. Leech via USRP-users (<=
usrp-users@lists.ettus.com>) escribi=C3=B3:
>> On 02/19/2020 12:01 PM, Alvaro Pendas via USRP-users wrote:
>> > Hello,
>> > I am using GNU Radio and the USRP B200. I have noticed that for the=20
>> > GNU block UHD: USRP Sink, the values you pass to the block must be in=20=

>> > the range 0 to 1. I guess that means if you do not want to lose=20
>> > resolution you must ensure that you use the full range, that is to=20
>> > say, your minimum is 0 or close to 0, and your max is 1 or close to 1.=20=

>> > Am I correct?
>> >
>> > On the other hand, what are the meaning of the values produce by the=20=

>> > block UHD: USRP Source? They must be related to the signal power, but=20=

>> > I am not sure about their range. Is the minimum value that block can=20=

>> > produce the min of the ADC output, and the max, the max of the ADC=20
>> > output? With the USRP B200 the ADC resolution is 12 bits, are the min=20=

>> > and the max always set with the same value, or does it depend on the=20=

>> > USRP configuration?
>> >
>> > I am using GNU Radio right now, but probably, just knowing how this=20
>> > works with UHD would be enough to understand the rest.
>> >
>> > Thank you for your time,
>> >
>> > Alvaro
>> >
>> Gnu radio generally likes to have baesband data streams scaled into=20
>> {-1.0,+1.0} which are linearly related to instantaneous voltages at
>>    the antenna of the hardware.
>>=20
>> To a first approximation, a value near +1.0 or -1.0 will drive the ADC=20=

>> to its maximum +/- value.  But that's only an approximation, since the
>>    signal is processed a fair amount (linearly) prior to reaching the=20
>> ADC/DAC, and with analog hardware there's no way of ensuring that
>>    a max value wont' over-drive the analog hardware.
>>=20
>> Power of a sinusoidal signal is proportional to the  I*I + Q*Q --=20
>> remember we're dealing with *voltages* here, so ohms law applies...
>>=20
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-F600C22B-745A-4E8F-BC2B-7D5C9F6002A1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Indeed. You=E2=80=99d have to use an extern=
al calibration source at several places over your parameter space (frequency=
 gain sample rate)<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Feb 19, 2020, at 1:54 PM, Alvaro P=
endas &lt;alvaropr97@gmail.com&gt; wrote:<br><br></blockquote></div><blockqu=
ote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Marcus tha=
nk your for your answer,</div><div><br></div><p style=3D"color:rgb(14,16,26)=
;background:transparent none repeat scroll 0% 0%;margin-top:0pt;margin-botto=
m:0pt"><span style=3D"color:rgb(14,16,26);background:transparent none repeat=
 scroll 0% 0%;margin-top:0pt;margin-bottom:0pt">First
 of all, you are right, the range is -1 to 1 (instead of 0 to 1 as I=20
said before). So, for example, in the receiving part, the values you get
 out of the UHD Source have</span><strong style=3D"color:rgb(14,16,26);backg=
round:transparent none repeat scroll 0% 0%;margin-top:0pt;margin-bottom:0pt"=
><span style=3D"color:rgb(14,16,26);background:transparent none repeat scrol=
l 0% 0%;margin-top:0pt;margin-bottom:0pt">&nbsp;</span></strong><span style=3D=
"color:rgb(14,16,26);background:transparent none repeat scroll 0% 0%;margin-=
top:0pt;margin-bottom:0pt">a
 linear relationship with the voltage of the analog signal, but I=20
understand there is no easy way to calculate that level with the only=20
information of the GNU Radio samples. Is that correct?</span></p></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9.=
, 19 feb. 2020 a las 19:22, Marcus D. Leech via USRP-users (&lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;) escrib=
i=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 02/19/2=
020 12:01 PM, Alvaro Pendas via USRP-users wrote:<br>
&gt; Hello,<br>
&gt; I am using GNU Radio and the USRP B200. I have noticed that for the <br=
>
&gt; GNU block UHD: USRP Sink, the values you pass to the block must be in <=
br>
&gt; the range 0 to 1. I guess that means if you do not want to lose <br>
&gt; resolution you must ensure that you use the full range, that is to <br>=

&gt; say, your minimum is 0 or close to 0, and your max is 1 or close to 1. <=
br>
&gt; Am I correct?<br>
&gt;<br>
&gt; On the other hand, what are the meaning of the values produce by the <b=
r>
&gt; block UHD: USRP Source? They must be related to the signal power, but <=
br>
&gt; I am not sure about their range. Is the minimum value that block can <b=
r>
&gt; produce the min of the ADC output, and the max, the max of the ADC <br>=

&gt; output? With the USRP B200 the ADC resolution is 12 bits, are the min <=
br>
&gt; and the max always set with the same value, or does it depend on the <b=
r>
&gt; USRP configuration?<br>
&gt;<br>
&gt; I am using GNU Radio right now, but probably, just knowing how this <br=
>
&gt; works with UHD would be enough to understand the rest.<br>
&gt;<br>
&gt; Thank you for your time,<br>
&gt;<br>
&gt; Alvaro<br>
&gt;<br>
Gnu radio generally likes to have baesband data streams scaled into <br>
{-1.0,+1.0} which are linearly related to instantaneous voltages at<br>
&nbsp; &nbsp;the antenna of the hardware.<br>
<br>
To a first approximation, a value near +1.0 or -1.0 will drive the ADC <br>
to its maximum +/- value.&nbsp; But that's only an approximation, since the<=
br>
&nbsp; &nbsp;signal is processed a fair amount (linearly) prior to reaching t=
he <br>
ADC/DAC, and with analog hardware there's no way of ensuring that<br>
&nbsp; &nbsp;a max value wont' over-drive the analog hardware.<br>
<br>
Power of a sinusoidal signal is proportional to the&nbsp; I*I + Q*Q -- <br>
remember we're dealing with *voltages* here, so ohms law applies...<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-F600C22B-745A-4E8F-BC2B-7D5C9F6002A1--


--===============3519129750489761723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3519129750489761723==--

