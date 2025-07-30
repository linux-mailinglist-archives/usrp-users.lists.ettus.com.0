Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 413EBB15FF0
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 14:05:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 233563867AD
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 08:05:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753877119; bh=p2Zmyz4mqYrSQM5dBiwPHus0vCbg2MnujL9MxpcTiFQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gGuIRaz0Izefso/kqP+FZ+lwV+/d6E6+LrD9g23tvcEKbkxgdw5TRfTJXcVnyLv1a
	 iI4XIXMWc2to60Thk/9qeMqSyf+CtPFHoyb132R7cbBhLYb+3StOc0GKuktYa+qxpT
	 u6fpaMsefsc+KYGKceJzgO0fucYUhGZmYg1+uKwQUHs0hak22tic3z7JnWDm0AxJ9g
	 jhqP6lymiIsYukKh0GU0BXawtqa58FGQ+hxSoNZ9rHn7tg5PTZHlLGrtZvVqWGY792
	 +scg7KkE8tcCvDb6suey7qtEs7OPyuag2Bm9Vaz4NaBviXgmFY+lzfltq8gjbfR5Ix
	 olhHRkoDBgKOg==
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 9442338669D
	for <usrp-users@lists.ettus.com>; Wed, 30 Jul 2025 08:04:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NNy5+Re1";
	dkim-atps=neutral
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-3e3e4c564ffso21846475ab.2
        for <usrp-users@lists.ettus.com>; Wed, 30 Jul 2025 05:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753877093; x=1754481893; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mhGjOjfBm5/QfbYdj/T70XkEo+KYVY+c9s3O3Xeqt24=;
        b=NNy5+Re1KIE/w+jLR3m+9LJ86bbQQH5Wj/k/gKLypgw0EVZKYn4D7+GIiCG9/yNHj7
         IMBzVlUaRpIYUYZpuM0CZk4UtrOu6o0L24pY+JdYNeRK7dwqOciSCTOSxIzHv/SEOtIQ
         3CG7mPB5ArL2bSvplFFCWPdlUN6Sa2A6GQkYOaP0awaByynEOZEdkxZj6IoUb8CuhOqN
         /un/csaTjcRp5vq29pIGNbaThyTUIVQOve2QSqM9LcrPCL9mmdN5jJ1AjDT5KBvbmVJd
         XBukckSXUVNYym21vYqpZQ+z2g07mz6J9GWvFZBdr53P2mjT5BOAhe6vWQQ0qVoXKp+E
         tXaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753877093; x=1754481893;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mhGjOjfBm5/QfbYdj/T70XkEo+KYVY+c9s3O3Xeqt24=;
        b=rA0rnBHLUx6Tnhx6LPVK5MccYzctQL25Du3IUgA0HrOBmGqylmMTJmXyILCoQG4sRC
         ix2FjjrN50/kJOcqDj2EDBUJ5N5uB220nhEaleKjwId0BKvM7egf56ZYazRcJGcI/E4B
         V3LI1OPhIUgsIhOWCGolqXlJSP0cV4EeufQ6L/PQaX0LhsNLtRWDyKUKSpBc/l+EqpSi
         PjEmH2O4cCWgDiU2T9pYByMdqEZKU/B9YTp1QNLDHzBsSWlp2pVM0GizFLCnFsuEe2wi
         juwJIz61v40G1S1VX/GXcfmUr/LKXf88oSYRsATIfMm1TzBjUpwSDZRswOz8cfxEoySV
         VkYg==
X-Gm-Message-State: AOJu0YwVmML3sQsQGUBCf/ua3lKu7alocNdBfM+pT8lpodqt/O3vjZcd
	Ya1yBcLxyp4KdeKh96yS2oyi6L+Aw4cm8wG5dffulqcwNVWkxOxUv2zjov6XSI54LkbS7Z2WNzZ
	dxn6WUlvPVu1KBNT1tvrVHWIGgvtrWvN78/s7
X-Gm-Gg: ASbGncsqGrX9zoCl508RmiDx78E95GOn8XWgNxfSvv3KoOddT0vwe1mgH/Cv2kqA8vf
	UXbbgjgykWfQuKSKggY1FZn9/lvwPEi1ltOypUcwYo9wVZ9WPwZJmJpCribdrbvLal/VWv9skEP
	4iGG28+7pX8dku9znVqzZvt68F9pI7kzNDMWlBYFRlLmFuxYBmfmB/TFnO354UnNCIl29razgC1
	A==
X-Google-Smtp-Source: AGHT+IHjjxJCvzHspWFu6I9JMdIkk49Mno7JX/8wQfbBeiuVdIg2yZNqgGPlXAkXg/39kBNR32l5ahIdHJlkqW781Eg=
X-Received: by 2002:a05:6e02:219b:b0:3e3:ee4e:486a with SMTP id
 e9e14a558f8ab-3e3f624252emr53257785ab.12.1753877084070; Wed, 30 Jul 2025
 05:04:44 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Wed, 30 Jul 2025 15:04:33 +0300
X-Gm-Features: Ac12FXz0FMu4-bujJCas4k6FFGd3nWvkpd6LrZcLSTz_kWAL2TA6IoE4iToyRsI
Message-ID: <CAAxXO2HOqxb7vT2a+gvzvWS+9fADzfQVqx6h7y-5DL6vxnTZzA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: UGFW2DPBGPTZUW7LQX7PNVD754HCTAC3
X-Message-ID-Hash: UGFW2DPBGPTZUW7LQX7PNVD754HCTAC3
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UGFW2DPBGPTZUW7LQX7PNVD754HCTAC3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8011793471221076671=="

--===============8011793471221076671==
Content-Type: multipart/alternative; boundary="0000000000009375a3063b245412"

--0000000000009375a3063b245412
Content-Type: text/plain; charset="UTF-8"

Hi,

I am getting a few overflow errors after sometime, from using my code..
First OOs in stdout and then metadata at which point it stalls.
I'm using .stream_mode = UHD_STREAM_MODE_NUM_SAMPS_AND_DONE,
Each time I read .num_samps in a loop until complete and then restart the
streamer.
I can't think of any case that I don't read all of the samples, so this
shouldn't happen.
What tools are there to debug this issue?
A function to monitor the rx_streamer internal buffers would be very useful.
Even the filename that implements this overflow would be helpful.
Grepping "OO" in the sources doesn't help. Always hits in "BOOST":(

TIA
Nikos

--0000000000009375a3063b245412
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi,=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">I am getting a few overf=
low errors after sometime, from using my code..</div><div class=3D"gmail_de=
fault" style=3D"font-size:small">First OOs in stdout and then metadata at w=
hich point it stalls.</div><div class=3D"gmail_default" style=3D"font-size:=
small">I&#39;m using .stream_mode =3D=C2=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DO=
NE,</div><div class=3D"gmail_default" style=3D"font-size:small">Each time I=
 read .num_samps in a loop until complete and then restart the streamer.</d=
iv><div class=3D"gmail_default" style=3D"font-size:small">I can&#39;t think=
 of any case that I don&#39;t read all of the samples, so this shouldn&#39;=
t happen.</div><div class=3D"gmail_default" style=3D"font-size:small">What =
tools are there to debug this issue?</div><div class=3D"gmail_default" styl=
e=3D"font-size:small">A function to monitor the rx_streamer internal buffer=
s would be very useful.</div><div class=3D"gmail_default" style=3D"font-siz=
e:small">Even the filename that implements this overflow would be helpful.<=
/div><div class=3D"gmail_default" style=3D"font-size:small">Grepping &quot;=
OO&quot; in the sources doesn&#39;t help. Always hits in &quot;BOOST&quot;:=
(</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><di=
v class=3D"gmail_default" style=3D"font-size:small">TIA</div><div class=3D"=
gmail_default" style=3D"font-size:small">Nikos=C2=A0</div><div class=3D"gma=
il_default" style=3D"font-size:small"><br></div></div>

--0000000000009375a3063b245412--

--===============8011793471221076671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8011793471221076671==--
