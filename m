Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7419731F411
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 03:45:14 +0100 (CET)
Received: from [::1] (port=49408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCvn5-0003Ry-JJ; Thu, 18 Feb 2021 21:45:11 -0500
Received: from mail-qt1-f172.google.com ([209.85.160.172]:37349)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lCvn1-0003JD-No
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 21:45:07 -0500
Received: by mail-qt1-f172.google.com with SMTP id v3so3024461qtw.4
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 18:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=Ry16wyrSDhley/bMxsl09+SUJAplJk1Zz4hjXLM/ysY=;
 b=cD6s2IgaLKCM0RMwG/o2lbSGOWVxXZQY7Msr4hBP7qRhTU1cvvXNMqb+d6QlcoJ5HQ
 AHu9iuhFJYT+j/4E+r7+wpjpLYSYVLHvMlXHRHP/8oh/xBEhS/5dkAzKUEmULPyfA93s
 VXmN+Ke1D8XsyAjd+91IPL2PayuDhavDe7A0O/yD8w2z5+6l3/VXMV27dnWPnn9sChFL
 QqSL9NzlUFpkuBano0wYgD24viQRhW0TBmXc9GDek20hbY+Fy2oUHnhI4lbeYD3vZZXR
 gKQyq7NYEH9ZlzWLloBtr2mm+Gtm5BmLlfR2oUn26EE59zjUExgu3oTbiShwoOB+lS0I
 fabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Ry16wyrSDhley/bMxsl09+SUJAplJk1Zz4hjXLM/ysY=;
 b=nLX8/50r1nrUKl7D/WaJgi07oZ5VzKmUs/BYA26MH11I5iLJBtjQDJAHHFehGrB00Q
 IBcwBKjpA7YA7bLBSFXtlHBSTGfahzR/ljwlAB4sGeTH/HAk+V4OC4Tonv8TXjQUDpgq
 Ecd9f3A3GjR1LCWRe0cKUaRbYWgnFuxvTbfXCRRsF7ICQIdBVvsBriYryFY3kS24m4t5
 ATfsA2H7Hc/Q2jJZp2QINtLjhLVfcIla7WiR81hl84zTAicQOg8XuXpZsTUV+qMKgbHb
 cZgU8f8a0ey7MqYOUymYRKgyCoMe7hkBIlBAuGrNuI74nSyP9ucjx1s8/hjmt8DZLzhZ
 xDPA==
X-Gm-Message-State: AOAM533b3cA42gjJhlI4OcM61p+zvBhqe7FCxZGTG06jRLqn4AqTvOUy
 uYX2euMvoUvrNtGvtxmVNr8YUrMj7r8=
X-Google-Smtp-Source: ABdhPJwk1BSIg58oodgRsDNzjVkT+CxAbS9tQhhJtYrB9nOi51VaAE2LMDtcf2Cv4TzGqFMKnrlF1A==
X-Received: by 2002:aed:3407:: with SMTP id w7mr7255117qtd.213.1613702666962; 
 Thu, 18 Feb 2021 18:44:26 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id b9sm1906656qkj.90.2021.02.18.18.44.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Feb 2021 18:44:26 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 18 Feb 2021 21:44:25 -0500
Message-Id: <023DC74F-683D-4FEF-AAF3-D39619E4791F@gmail.com>
References: <CACryqrEA9jJWATSCon3Drp-ngO0QraK7goABm0U0gTFqR_hCdg@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CACryqrEA9jJWATSCon3Drp-ngO0QraK7goABm0U0gTFqR_hCdg@mail.gmail.com>
To: Xiang Ma <marxwolfs@gmail.com>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] x310 two UBX daughterboard receiver
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============1256168390173191093=="
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


--===============1256168390173191093==
Content-Type: multipart/alternative; boundary=Apple-Mail-960E48DE-D93D-4A54-A757-17B5024ED377
Content-Transfer-Encoding: 7bit


--Apple-Mail-960E48DE-D93D-4A54-A757-17B5024ED377
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Well there=E2=80=99s the rx_multi_samples example that is part of the UHD so=
urce tree.=20

Sent from my iPhone

> On Feb 18, 2021, at 9:32 PM, Xiang Ma <marxwolfs@gmail.com> wrote:
>=20
> =EF=BB=BF
>   Do you have any example code? I am still confused.
>=20
> Thank you.
>=20
>> On Thu, Feb 18, 2021 at 5:50 PM Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>> Just create a 2-channel USRP source and specify a subdev of =E2=80=9CA:0 B=
:0=E2=80=9D.=20
>>=20
>>=20
>>=20
>> Sent from my iPhone
>>=20
>>>> On Feb 18, 2021, at 7:38 PM, Xiang Ma via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>>>>=20
>>> =EF=BB=BF
>>> Hi,
>>>=20
>>>     I am using a x310 USRP with two UBX daughterboards. Now I can transm=
it and receive the signal in RF A daughterboard with command
>>>     self.source.set_antenna("RX2", 0)
>>>     self.sink.set_antenna("TX/RX", 0).
>>>=20
>>>     Now, I want to transmit the signal in RF A, and receive the signal i=
n both RF A and RF B. It is actually 1 transmitter and 2 receivers. How can I=
 implement this? I checked the set_subdev_subdev("B", 1), but it doesn't wor=
k.
>>>=20
>>> Thank you,
>>>=20
>>>=20
>>>=20
>>>=20
>>> --=20
>>> Xiang Ma, Ph.D. Student
>>> College of Engineering
>>> Utah State University
>>> E-mail:marxwolfs@gmail.com
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>=20
>=20
> --=20
> Xiang Ma, Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com

--Apple-Mail-960E48DE-D93D-4A54-A757-17B5024ED377
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Well there=E2=80=99s the rx_multi_samples e=
xample that is part of the UHD source tree.&nbsp;<br><br><div dir=3D"ltr">Se=
nt from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Feb=
 18, 2021, at 9:32 PM, Xiang Ma &lt;marxwolfs@gmail.com&gt; wrote:<br><br></=
blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div di=
r=3D"ltr">&nbsp; Do you have any example code? I am still confused.<div><br>=
</div><div>Thank you.</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, Feb 18, 2021 at 5:50 PM Marcus D Leech &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
auto">Just create a 2-channel USRP source and specify a subdev of =E2=80=9CA=
:0 B:0=E2=80=9D.&nbsp;<div><br></div><div><br><br><div dir=3D"ltr">Sent from=
 my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Feb 18, 20=
21, at 7:38 PM, Xiang Ma via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr">Hi,<div><br></div><div>&nbsp; &nbsp; I am using a x310 USRP=
 with two UBX daughterboards. Now I can transmit and receive the signal in R=
F A daughterboard with command</div><div>&nbsp; &nbsp;&nbsp;self.source.set_=
antenna("RX2", 0)</div><div>&nbsp; &nbsp; self.sink.set_antenna("TX/RX", 0).=
</div><div><br></div><div>&nbsp; &nbsp; Now, I want to transmit the signal i=
n RF A, and receive the signal in both RF A and RF B. It is actually 1 trans=
mitter and 2 receivers. How can I implement this? I checked the set_subdev_s=
ubdev("B", 1), but it doesn't work.</div><div><br></div><div>Thank you,</div=
><div><br></div><div><br></div><div><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"times new roman, serif" size=
=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,&nbsp;</b></i></font>=
<span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D=
"color:rgb(136,136,136)"><font color=3D"#444444">College of Engineering</fon=
t></div><div><font color=3D"#444444">Utah State University</font></div><div s=
tyle=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"ma=
ilto:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">m=
arxwolfs@gmail.com</a></font></div></div></div></div></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.c=
om" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" targ=
et=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a></span><br></div></blockquote></div></div></blockquote></div><br cle=
ar=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature">=
<div dir=3D"ltr"><font face=3D"times new roman, serif" size=3D"4" style=3D"c=
olor:rgb(136,136,136)"><i><b>Xiang Ma,&nbsp;</b></i></font><span style=3D"co=
lor:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"color:rgb(136,1=
36,136)"><font color=3D"#444444">College of Engineering</font></div><div><fo=
nt color=3D"#444444">Utah State University</font></div><div style=3D"color:r=
gb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mailto:marxwolfs@=
gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.=
com</a></font></div></div></div></div>
</div></blockquote></body></html>=

--Apple-Mail-960E48DE-D93D-4A54-A757-17B5024ED377--


--===============1256168390173191093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1256168390173191093==--

