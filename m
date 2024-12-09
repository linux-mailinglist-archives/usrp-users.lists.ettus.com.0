Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AE89E8970
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2024 04:11:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CF10385B79
	for <lists+usrp-users@lfdr.de>; Sun,  8 Dec 2024 22:11:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733713899; bh=yF2gH0XhRsK/94s1aem9y4PhdvmnmJ78A8xNIHWLQvc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=urvv5nyr+UZ5ilBKjAAzrkk1SId5dDwZ9L8V/zO3DM6QuC+RxWt/bZHLuHisLD9sW
	 sko7yczrdVKfk65uvwD+zo3aRx2DsHbamFE9cN+ofOmgReBLmRpst6Pw/+8YmGwSni
	 5Dzs8t1/OKEPz14x9OLFNsz0Fm1WXjTOUGg2NqI7UAaAKVFDOA91gKwqDbL0Mnzbom
	 Wx6H6H6+HiVs1n52v+rEcNVS5zIB9DG3Ak0cUxp1ewTrT8H3Zzh9W15mfgaA6U9cGl
	 yMJuRk5EGz9zH8kNxxe9FJM77Y9cm74attNIi8zWVy4hLkyL7Ax7h+Tmn8SyMlaYSU
	 Pl5FVVEvFIHHA==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id AE392385B08
	for <usrp-users@lists.ettus.com>; Sun,  8 Dec 2024 22:10:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MlzgSU+X";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6d8e7df7199so25258416d6.1
        for <usrp-users@lists.ettus.com>; Sun, 08 Dec 2024 19:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733713847; x=1734318647; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LWFilFUjwaMfeM0dqkwearzH+CXSgfJWNKXz6w5EA2I=;
        b=MlzgSU+XkG5tavfoAb255JB6lN+nrZI0EeOREctNqciAcIgHfWRz0tkADsVdDiPVrI
         bHr3hDdr9/50kQRdPIrKaun4SvaWtSqhgflMialgz79hIvMNfRCatD2NH+lAr28FVHn6
         P+Q+ljmXaFQ4P9D+1mWXnwPq8qTgt2QaVmWVsx9C3OaCoMroc7r4QGAWDoLGODxB9Piq
         AkJc5FJP8PvNxFg/B611kTv1dcr8CUAv8bZrIFEtKeIb8RqU+MK7PgyUdlZX9pvTFFKE
         O/C7+RMBO/zdQ8Pg3szP/hr8RktYM123fWWGW+tTw6OHrCroVZXuKbDXMKQUnJjuOJ4D
         UDSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733713847; x=1734318647;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LWFilFUjwaMfeM0dqkwearzH+CXSgfJWNKXz6w5EA2I=;
        b=Uf+JtaIeoFVpRtzBuKd8PrKp9xlXYDabf8moIoDpMOu4M9jXOXe1pa/QSQUH9ksoWj
         xeh3UJUXc6OFrnHVVzkO/QyoEVMfa4x5iLuGEAxDnNr7Tsq5w2jb7vpbZsapeEg/m88J
         8hvNLLmFMcA2+yU+ABf7PLrc404CkgFYm0YVLAp+v0aQsY60oFvMuZodFe56fTtOVJQv
         QoAvb2eOyts8anJp5f5bxGre3LHJL+yda5eI2MzHEzh7313g7JrRRpgpqVZBksdS/gcL
         mCKIWHUb6JIIYFFgEQyp2YESSM+4vJ3FCjDpNGYrajrg6DDESW37KWyMAaTHWleOAijl
         k55A==
X-Gm-Message-State: AOJu0YxTUNL7zgsa2NqNCVvrhsiANH0DkeBg4urwJ6ZWAqJ10UMJqlkc
	4BRE5Cui9n4cZCjvErY/IIT66J3QvjCr9xwbRPfLTPNRbZGGvbG71/lPLg==
X-Gm-Gg: ASbGncu7bMbFEhkzIBOBm1hUI4isI7RD4GBVifJoRn9+VriDI8qz9v9nepHA5JVC9IH
	IoYdyMmBB62rhwgCROFG70GHKCbgNj5QrhQ9RKhrZXHF+RlHW2hzhIOqoe0PniAzXN6Jn5I60y/
	xzTaa6jIGsXpXckDLBupgpQbT06dIckQpTEWCixRoDkMJ3G+0hvnWxex8hE0kr515izXRg++q8j
	o+RacWY42ya731irhBcJkewwbMBmZTDMQOhKBjs13C0gi3GGsr/d/sUAvTA
X-Google-Smtp-Source: AGHT+IH2ie2UJpmt3bLbgwn4SvzKBoRaEr29gXHCGcY8c0HQiADbCa2nUjOiu4KgT50SbIbjhC5SPg==
X-Received: by 2002:a05:6214:1863:b0:6d8:a091:4f5c with SMTP id 6a1803df08f44-6d8e71ebe93mr163462816d6.33.1733713846883;
        Sun, 08 Dec 2024 19:10:46 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d8da9fd1f2sm44283006d6.81.2024.12.08.19.10.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Dec 2024 19:10:46 -0800 (PST)
Message-ID: <b271ccbb-193a-46ec-ae04-b105ff219592@gmail.com>
Date: Sun, 8 Dec 2024 22:10:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHHfRLNU=UF_3Eq4HDqT5So4LV__+mfeixVgnj0raY5W=guz+Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHHfRLNU=UF_3Eq4HDqT5So4LV__+mfeixVgnj0raY5W=guz+Q@mail.gmail.com>
Message-ID-Hash: LKIIXAFYSGIKSHGITZ4UFGT3LJUCYP2Y
X-Message-ID-Hash: LKIIXAFYSGIKSHGITZ4UFGT3LJUCYP2Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Finding a case for the white B200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LKIIXAFYSGIKSHGITZ4UFGT3LJUCYP2Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3545680315848837786=="

This is a multi-part message in MIME format.
--===============3545680315848837786==
Content-Type: multipart/alternative;
 boundary="------------NpYzIdvhCESJYsv4Lwwjwh50"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------NpYzIdvhCESJYsv4Lwwjwh50
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/12/2024 22:01, Maurycy Z wrote:
> Does anyone know where I could find a case for the older white PCB=20
> USRP B200? I can't find one on the Ettus site.
>
>
They don't exist.=C2=A0 By the time NI/Ettus started making cases for the=
=20
B200, the white-PCB B200 was already
 =C2=A0 supplanted by the newer boards with the larger USB connector.


--------------NpYzIdvhCESJYsv4Lwwjwh50
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/12/2024 22:01, Maurycy Z wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHHfRLNU=3DUF_3Eq4HDqT5So4LV__+mfeixVgnj0raY5W=3Dguz+Q@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Does anyone know where I could find a case for the older
          white PCB USRP B200? I can't find one on the Ettus site.</div>
        <div><br>
        </div>
        <span class=3D"gmail_signature_prefix"></span><br>
      </div>
    </blockquote>
    They don't exist.=C2=A0 By the time NI/Ettus started making cases for=
 the
    B200, the white-PCB B200 was already<br>
    =C2=A0 supplanted by the newer boards with the larger USB connector.<=
br>
    <br>
    <br>
  </body>
</html>

--------------NpYzIdvhCESJYsv4Lwwjwh50--

--===============3545680315848837786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3545680315848837786==--
