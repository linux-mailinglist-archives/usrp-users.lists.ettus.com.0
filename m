Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D45486F0BA4
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:56:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1468638484E
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:56:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682618182; bh=IGHvzKEwy+RI/08yUpdABGLJ0z7967swltK0owIo0Ag=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qci+Tol5NRyJDTMR7C3dEWOFMQzwbl0le3BFfhrXxz/Y/alC6/x+PitmLi1fI0USG
	 S7sYXG67pCQ4yV9gukRBotu03EzFBFN71uou3XsxDTirqd0iNbKk5bxcNaeHuaQeK6
	 pvI/0qqMGR96tt71tA6gCE4k7ZkfyMcifS0BcJ5+lPHsN9hY61ALDXwZrUp7hii+Qq
	 K30LKNkO8uPZH4/M9wy7fZlbDZ7L6OxQtMOV4nMBxsUSEJaFuosOfL8s1Lhrcgd2hg
	 ZU3QpfiWO6+oFnFs7GDrXl+xSwGRrzvgi0Ev6y/kUgsN6PcvBPJXLVnKh537VglaPf
	 hZhYVL+oM58xg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 7911E383F77
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:55:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WCGFxF0m";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-74d981be825so422447285a.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682618136; x=1685210136;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fY6jR4GA/b1FBFiS3lwagOGzF/j/bgWH4ghKhNZshp0=;
        b=WCGFxF0mOvfNdZ0mBc6MXsuVCpsUfRyln3HMIZtTxwEH40JFVd0u9nR85nsfZH6Tp1
         tcqVX5aYnTcE9YpcudLibXkFsmNwhHS4HEU67vCeVomhG9tUy/yfK1mLkLc/lh9BahtH
         f+RUtrFlFPsgXxlcpRPyoYytTKxA9wzP7VS4SL0KkUzwAuq3S2sRgmSdAXjzPObM6+ye
         kU9MEZhEEFhaf5kW5qrU5LTerVaFL3DvVemXm4lHYNTXSJ2JGPZHoP63IVAIQeui0AoW
         RMGebirUyJhX5c2P4qyKpYn3Ee0jMPwgSEONMlYM+yLwH9ix60knquju10qNSQe9f9DU
         17og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682618136; x=1685210136;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fY6jR4GA/b1FBFiS3lwagOGzF/j/bgWH4ghKhNZshp0=;
        b=F2v/MSmcSOETe+Y2BMYNS2zBPCa8eTN/cn1bCY845vPtTAbE94wBkPiIS3TaLQDb24
         jB/IaQ3LBGpXNx4c8y6eS1CrXENjtWaq5/ugMNYNgL1qqmyizbgkNxXjjR/uJ2QvA86E
         ZAVq44MXCh6blDz0sfvc/pcMkxX/hduruinvjqm/vPe1C+Bsi5bb7+7crA2iQ1G4q6AI
         4RqeOcaf42x9zA85uf3aVOJp2E1RVC5Kh8p5ymBkyIBer1r4gAQetC/aJucw6t9dFPfj
         NABEsqGxUyJwaRHGoIy+isw8snP439EwK2AV1PHMMNvwmni07/7iFHUtMpDYGTjP5rCO
         qYRg==
X-Gm-Message-State: AC+VfDzBIOEgALBtFDZY+cGiffG99s5YB41ecTX75BEVkm+13KDm4Dyx
	aZvkVzXR1u1iSYS88bSVZ3bqjSEpQGE=
X-Google-Smtp-Source: ACHHUZ7wVaTbT6HsHwddAxHmH3/2ttm93UbE7jpbUg0WtLFqh2FXrUtvouM3I55QDtWCVWzaoKGKGg==
X-Received: by 2002:ad4:5c86:0:b0:56e:b91f:aec4 with SMTP id o6-20020ad45c86000000b0056eb91faec4mr4521054qvh.11.1682618135651;
        Thu, 27 Apr 2023 10:55:35 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id o10-20020a0cecca000000b005f227de6b1bsm5759671qvq.116.2023.04.27.10.55.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 10:55:35 -0700 (PDT)
Message-ID: <96552b84-732f-5bfb-c5f6-2503ddbdc9b8@gmail.com>
Date: Thu, 27 Apr 2023 13:55:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74@lists.ettus.com>
Message-ID-Hash: NYXQ6L5FRAIBRXD4XTOSN5UTXRDQ4KVZ
X-Message-ID-Hash: NYXQ6L5FRAIBRXD4XTOSN5UTXRDQ4KVZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NYXQ6L5FRAIBRXD4XTOSN5UTXRDQ4KVZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5420068365950217342=="

This is a multi-part message in MIME format.
--===============5420068365950217342==
Content-Type: multipart/alternative;
 boundary="------------H59RHAddySKXcj3810YTlHpv"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------H59RHAddySKXcj3810YTlHpv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/04/2023 13:45, jmaloyan@umass.edu wrote:
>
> I am using this card=20
> <https://www.amazon.com/10Gtek-X540-T2-Converged-Network-Adapter/dp/B01=
HMGWOU8?th=3D1>,=20
> which as the intel x540 controller. The lights on the ethernet card do=20
> light up, but the lights of the SFP port on the N321 does not. I=20
> verified it works when working with the 10/100/1000 Mb Ethernet (mgmt=20
> address). I am using the SFP+ to Rj45 adapter that comes with the N321
>
>
You're running the XG image, which means 10GiGe on both SFP+ ports.=C2=A0=
=C2=A0=C2=A0=C2=A0=20
For 10GiGe you need different SFP+ adaptors on both
 =C2=A0 ends and appropriate wiring or fiber.=C2=A0=C2=A0=C2=A0 You canno=
t use the (1GiGe)=20
RJ-45 for 10GIGe.=C2=A0 It won't work.



--------------H59RHAddySKXcj3810YTlHpv
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/04/2023 13:45, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I am using this <a
href=3D"https://www.amazon.com/10Gtek-X540-T2-Converged-Network-Adapter/d=
p/B01HMGWOU8?th=3D1"
          title=3D"" moz-do-not-send=3D"true">card</a>, which as the inte=
l
        x540 controller. The lights on the ethernet card do light up,
        but the lights of the SFP port on the N321 does not. I verified
        it works when working with the 10/100/1000 Mb Ethernet (mgmt
        address). I am using the SFP+ to Rj45 adapter that comes with
        the N321</p>
      <br>
    </blockquote>
    You're running the XG image, which means 10GiGe on both SFP+
    ports.=C2=A0=C2=A0=C2=A0=C2=A0 For 10GiGe you need different SFP+ ada=
ptors on both<br>
    =C2=A0 ends and appropriate wiring or fiber.=C2=A0=C2=A0=C2=A0 You ca=
nnot use the
    (1GiGe) RJ-45 for 10GIGe.=C2=A0 It won't work.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------H59RHAddySKXcj3810YTlHpv--

--===============5420068365950217342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5420068365950217342==--
