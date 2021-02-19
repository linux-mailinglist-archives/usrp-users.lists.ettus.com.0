Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C2F31F372
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 01:51:46 +0100 (CET)
Received: from [::1] (port=48732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCu1H-0006pg-KC; Thu, 18 Feb 2021 19:51:43 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:44655)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lCu1D-0006jM-IM
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 19:51:39 -0500
Received: by mail-qk1-f180.google.com with SMTP id j66so2685971qkf.11
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 16:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=9OhKEII+zYXzShObrAnSySbubsGOnSAIjl1O2mtxCnE=;
 b=k26oYjjN4Jo7W1t7eTHj2vHe9vZhNzY/HdMA3lU9dH1qfcpC+7Uz20jxiAwvbtzx8i
 D6nkvajO9+t5Mz2gn3kTC0k7xvGNz3ytEjiIYQ0qBJOPMrXBQL7E2WKMO86zVo+DFWEE
 +0LG/AtboTNiTvmaes4mKgpOQdEFNyIvQewnfaUDKUKvjokZcwIVcefE+2u9vyP+AK/F
 DpSoG5/Q3tE4AbAUugYD6kyUWnsenRqrCIbAXdTYuLfaKTQ4AxK0SlFOqLT/KrDFGdNX
 UdZLjB4F+bProBcRalBHWL/172/sDo9uFrrQsuHTzHTsEumP6Jv6xM8aYORzgYXjnM2A
 /yBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=9OhKEII+zYXzShObrAnSySbubsGOnSAIjl1O2mtxCnE=;
 b=kXS+4ozQAkasHXE+7CjRaSE3I3Cubqs+BD75j/hxWcmGRVgP05ttNdfAewpfFzBCsp
 7mtI7kfHOzEYv7/6+0e3t4hUTx3B4m2AY2OPaKHY8HX8SjqlAZXWdx/2NEASKEljOgoP
 slqdbNIHzv5f9f2tF7apCLFOqMi4qdmqhQLNaCer2h/s+NovtUEX370drCh4JQ5ZJX9d
 gHSdDk0S5umniGhKkpeUbZtWy/WuyEKEy0HKoYOD8jQK7FBJCVzfCktXPqa5CthqKNYJ
 h1EmAE23hVN+yWL/sFu2dnU4TcQqMDrfhkTlwy6zT5BAxBrhELaYKzdHexiKxoFLJ2aI
 5vrw==
X-Gm-Message-State: AOAM533TVVaWogXcFTBNKiJv0YUmnPfz8wukZaS3tOsoLjFFzPGfTUg9
 L0jBarZu1v1oAuetLT8tl9Mqvz0PR/M=
X-Google-Smtp-Source: ABdhPJy24uXUwFdygaCYKO0UawDsSgyhwDE2N3tNPuxsMWFmGZA9Mr/DFVCCy79EwzFW+VKlumL5PQ==
X-Received: by 2002:a37:4cd:: with SMTP id 196mr7123048qke.385.1613695858712; 
 Thu, 18 Feb 2021 16:50:58 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id c127sm5303082qkd.87.2021.02.18.16.50.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Feb 2021 16:50:58 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 18 Feb 2021 19:50:57 -0500
Message-Id: <4D7FFA5B-7EFA-461F-AA1C-56F8A103C516@gmail.com>
References: <CACryqrGQYGQkevGZBi4BRQfmQqDMxopumXRr4qdZHY=1yDDDOw@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CACryqrGQYGQkevGZBi4BRQfmQqDMxopumXRr4qdZHY=1yDDDOw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============9174365325990427725=="
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


--===============9174365325990427725==
Content-Type: multipart/alternative; boundary=Apple-Mail-BEAB6BF6-5E70-4D0B-83FF-B75483C72BAA
Content-Transfer-Encoding: 7bit


--Apple-Mail-BEAB6BF6-5E70-4D0B-83FF-B75483C72BAA
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Just create a 2-channel USRP source and specify a subdev of =E2=80=9CA:0 B:0=
=E2=80=9D.=20



Sent from my iPhone

> On Feb 18, 2021, at 7:38 PM, Xiang Ma via USRP-users <usrp-users@lists.ett=
us.com> wrote:
>=20
> =EF=BB=BF
> Hi,
>=20
>     I am using a x310 USRP with two UBX daughterboards. Now I can transmit=
 and receive the signal in RF A daughterboard with command
>     self.source.set_antenna("RX2", 0)
>     self.sink.set_antenna("TX/RX", 0).
>=20
>     Now, I want to transmit the signal in RF A, and receive the signal in b=
oth RF A and RF B. It is actually 1 transmitter and 2 receivers. How can I i=
mplement this? I checked the set_subdev_subdev("B", 1), but it doesn't work.=

>=20
> Thank you,
>=20
>=20
>=20
>=20
> --=20
> Xiang Ma, Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-BEAB6BF6-5E70-4D0B-83FF-B75483C72BAA
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Just create a 2-channel USRP source and spe=
cify a subdev of =E2=80=9CA:0 B:0=E2=80=9D.&nbsp;<div><br></div><div><br><br=
><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Feb 18, 2021, at 7:38 PM, Xiang Ma via USRP-users &lt;usrp-u=
sers@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi,<div><br></div><div>&nb=
sp; &nbsp; I am using a x310 USRP with two UBX daughterboards. Now I can tra=
nsmit and receive the signal in RF A daughterboard with command</div><div>&n=
bsp; &nbsp;&nbsp;self.source.set_antenna("RX2", 0)</div><div>&nbsp; &nbsp; s=
elf.sink.set_antenna("TX/RX", 0).</div><div><br></div><div>&nbsp; &nbsp; Now=
, I want to transmit the signal in RF A, and receive the signal in both RF A=
 and RF B. It is actually 1 transmitter and 2 receivers. How can I implement=
 this? I checked the set_subdev_subdev("B", 1), but it doesn't work.</div><d=
iv><br></div><div>Thank you,</div><div><br></div><div><br></div><div><br cle=
ar=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"times new r=
oman, serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,&nbs=
p;</b></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span>=
<div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">College o=
f Engineering</font></div><div><font color=3D"#444444">Utah State University=
</font></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E=
-mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)" t=
arget=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div></div></div=
></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-BEAB6BF6-5E70-4D0B-83FF-B75483C72BAA--


--===============9174365325990427725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9174365325990427725==--

