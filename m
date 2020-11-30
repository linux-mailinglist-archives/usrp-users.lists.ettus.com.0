Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E231F2C8BAA
	for <lists+usrp-users@lfdr.de>; Mon, 30 Nov 2020 18:48:50 +0100 (CET)
Received: from [::1] (port=33486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kjnI5-0003Q9-Pe; Mon, 30 Nov 2020 12:48:45 -0500
Received: from mail-qk1-f171.google.com ([209.85.222.171]:37519)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kjnI2-0003KJ-Hr
 for USRP-users@lists.ettus.com; Mon, 30 Nov 2020 12:48:42 -0500
Received: by mail-qk1-f171.google.com with SMTP id h20so11642059qkk.4
 for <USRP-users@lists.ettus.com>; Mon, 30 Nov 2020 09:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=klo6CndEo62HdYl9cqQaAIUzntFpUg/usgXd3vB2bo4=;
 b=RAzAATVOx6ravOSCnGjT5zYUtAMOksNTxA6IUb4dMJONoMDR6Iai3AmPT6X9gsacFs
 RJvcqtnMlJLb7hUBHkjZhzeXmCGfp7h+dQfQFsKsNZKmB955rYLJeKumPqQY5Vsg5Vzd
 d1fUtBHGA20VFxZfs5V63gEkiJi/D4da38EoyzfKhwM04WC5GcEy/LWqrL5jk2zXxK5Z
 iaJEB/gfofmNAHzclxewPlu6KK5HpIzGYoNaG5wKfwRQn+F9qfSdf9r5zvukLigtvPTO
 cjVpMYnHrmw/ZzpYeSP/I3VXrYOrwysKNpK7Y7vPs8CphgbK/n3c2g4tqZisrPzPvxez
 Y4uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=klo6CndEo62HdYl9cqQaAIUzntFpUg/usgXd3vB2bo4=;
 b=GqoJoXY/N7Bb6TK7HMwqPe8EGc2JKJ+AKLLgwXDEHphzaWIHv4kj/qCVvslaxdnbgN
 1pqVDkT01Ix7Xwp+6WhkOesifJsPAhfEZc3QIuva6Tj+yE3mQSrVMZOFWxV7NGDeDjfa
 FNd3lbvXLo2VbKSjHuRMwtWu+lRlE4kGQ1qxhxYroBRi7br4vI2LyoaJVRPHRVPMI2/y
 dyiTi/FMs5s5gkzAhm3PZr4p6LYLZ6PwRmr2gtVonBGOUFR+Lzho7ZWz6aZ+L3GEN7sD
 Puaunmb10OdtUiNU4gSPe0qmFBQGFngTS3S0cwDlRYQx6fwzJhzXrdtGS37xR0+EMlVp
 O0Mg==
X-Gm-Message-State: AOAM532TewLVjLZz8cqy8kmv2LCz0qjkREWVjBBFjcIg4LAJ78SLyShw
 fXyOxO1/i4w5c3NCcuerBH+AtXesmcg=
X-Google-Smtp-Source: ABdhPJwDvNRLCXpjA5nqEoU7jA/XlarefbsFdQK0+Mn7lTP0XYm7lUXQoP31BfyKEEu4e0lOtkBEhw==
X-Received: by 2002:a37:5242:: with SMTP id g63mr24437954qkb.317.1606758481634; 
 Mon, 30 Nov 2020 09:48:01 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id c4sm16355327qtn.39.2020.11.30.09.48.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Nov 2020 09:48:01 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 30 Nov 2020 12:48:00 -0500
Message-Id: <D28E5616-DFCA-498D-9136-634583AB43EB@gmail.com>
References: <trinity-a9e545d1-8706-4d8e-aeb5-1c2492fc8b6c-1606726945931@3c-app-gmx-bap15>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <trinity-a9e545d1-8706-4d8e-aeb5-1c2492fc8b6c-1606726945931@3c-app-gmx-bap15>
To: Lukas Haase <lukashaase@gmx.at>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] UBX160 TX "noise figure"?
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
Content-Type: multipart/mixed; boundary="===============2519515117040612957=="
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


--===============2519515117040612957==
Content-Type: multipart/alternative; boundary=Apple-Mail-E06B1C39-71F2-4D4A-8DB2-65B81B83B805
Content-Transfer-Encoding: 7bit


--Apple-Mail-E06B1C39-71F2-4D4A-8DB2-65B81B83B805
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The output SNR will be utterly dominated by the inherent DAC noise.=20

There=E2=80=99s a good article here:

https://www.analog.com/media/en/training-seminars/tutorials/MT-001.pdf

Sent from my iPhone

> On Nov 30, 2020, at 4:03 AM, Lukas Haase via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BFHello,
>=20
> Does anyone know what the *TX* noise figure (output SNR) of the UBX160 is?=

> Roughly?
> For simplicity, can neglect phase noise and assume white noise floor.
>=20
> In words, if I transmit a full-scale sinusoidal signal, what will be the n=
oise floor around that signal?
>=20
> Of course, this will depend on TX Gain setting.
>=20
> For example, a -3dBFS signal at TX gain 25 gives -3+25-5.56 =3D 16.44dBm. W=
hat will roughly be the noise power (and hence SNR)?
>=20
> Thanks,
> Lukas
>=20
>=20
> PS: Usually we are interested in receiver (not transmitter) noise but the T=
X SNR can be relevant for self-interference.
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-E06B1C39-71F2-4D4A-8DB2-65B81B83B805
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The output SNR will be utterly dominated by=
 the inherent DAC noise.&nbsp;<div><br></div><div>There=E2=80=99s a good art=
icle here:</div><div><br></div><div><a href=3D"https://www.analog.com/media/=
en/training-seminars/tutorials/MT-001.pdf">https://www.analog.com/media/en/t=
raining-seminars/tutorials/MT-001.pdf</a><br><br><div dir=3D"ltr">Sent from m=
y iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 30, 2020=
, at 4:03 AM, Lukas Haase via USRP-users &lt;usrp-users@lists.ettus.com&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF<span>Hello,</span><br><span></span><br><span>Does anyone know what th=
e *TX* noise figure (output SNR) of the UBX160 is?</span><br><span>Roughly?<=
/span><br><span>For simplicity, can neglect phase noise and assume white noi=
se floor.</span><br><span></span><br><span>In words, if I transmit a full-sc=
ale sinusoidal signal, what will be the noise floor around that signal?</spa=
n><br><span></span><br><span>Of course, this will depend on TX Gain setting.=
</span><br><span></span><br><span>For example, a -3dBFS signal at TX gain 25=
 gives -3+25-5.56 =3D 16.44dBm. What will roughly be the noise power (and he=
nce SNR)?</span><br><span></span><br><span>Thanks,</span><br><span>Lukas</sp=
an><br><span></span><br><span></span><br><span>PS: Usually we are interested=
 in receiver (not transmitter) noise but the TX SNR can be relevant for self=
-interference.</span><br><span></span><br><span></span><br><span>___________=
____________________________________</span><br><span>USRP-users mailing list=
</span><br><span>USRP-users@lists.ettus.com</span><br><span>http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com</span><br></div></blockqu=
ote></div></body></html>=

--Apple-Mail-E06B1C39-71F2-4D4A-8DB2-65B81B83B805--


--===============2519515117040612957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2519515117040612957==--

