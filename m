Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B567480D09F
	for <lists+usrp-users@lfdr.de>; Mon, 11 Dec 2023 17:09:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BB9938503A
	for <lists+usrp-users@lfdr.de>; Mon, 11 Dec 2023 11:09:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702310955; bh=j5MbBGnQpNsXcHFIImartXdwl8+I8jquC+bG2hn1fzM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=m7L49IxT7PcKB5mPfoDEgNK9vAuCqpbM2CL8jtVHQw3HKlVytFt3zjmqTG3X8u4rK
	 1y3msD+f3merEqCMkMka+u3N4uZHwcXSlFY8EdAOYcmIhGwUITZdFZ3iN4aY0Ab4n3
	 /kz+D8qXJsljdEzJptMF9/iZhx/bNK3C8wTDLWeMu8b3eIdi3IQKEB/lfhNGWbB0cd
	 NMEVESGGmopHMK+lEN0kUd2DiLEIEVdaGFBvJNUREbpCmtDfkoHsn/ypBlQfhHhp+s
	 zKIn8U6SymQ1j7J76zWMPeA+Dj7qtPoRLZerF1IEVStsVpHul4cegtzLGnw1XzaiSU
	 beuWwWreMtSOg==
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by mm2.emwd.com (Postfix) with ESMTPS id CDC96384E03
	for <usrp-users@lists.ettus.com>; Mon, 11 Dec 2023 11:09:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Wsa2SrRf";
	dkim-atps=neutral
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6d9d59d6676so3484504a34.1
        for <usrp-users@lists.ettus.com>; Mon, 11 Dec 2023 08:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702310943; x=1702915743; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y+bhXBDVs9A5Ul65jZAfpo+DTb3nRfESfjcrZY1Dzo0=;
        b=Wsa2SrRfObp8/2wcjTpoqhgv88uF9ENZgPzahnR7LUrkDlR9OZkVSVE3613AmT79VL
         JXQxhN7vYz9KWXpwVuKQGqd8q+UrX5pY/ChH7+BPj/mVoB3HOJLiuc/UhcYJY66Xm4F/
         9CgR98UVsqS6uvbvrzRoG+E2JIrOjR2p2ppUODAZJFrHztDPIzgr2sbq4TPMrt3Rydoa
         D9+Bu2FJ+DNRXgbqncmHPqC8WbxmRH+VsiylMmuv1DLlYYQdbEvduP8BGd54JgPIKydd
         adeWOTF2eVG5ARsl2hTHqqSEXQ0YbKj1XV3tP5zu80MHJ/LqaTGnosZoJ0RJu+6cH0Em
         Sv6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702310943; x=1702915743;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=y+bhXBDVs9A5Ul65jZAfpo+DTb3nRfESfjcrZY1Dzo0=;
        b=LE2TwiKbzZakfn/e4msYBNgJIlY3yJRPPFZc7SRTrl/Tht9WWLx+RJEOZybMx16ly/
         oSYF5tK54Ugtunn+LcprIJgeY8bu1VRgz2BcMfSYY+wFpVtjGZPkTbPDcCg5q4luaK7E
         xpkCA2h0nj4a731NdjlscU7ZkjQL0UshrX6S7koV5MAjDpy7reRVhPsy9/axlo94lofg
         ptyXCKqlMWsk2Lq4ZqHyOGyiJJu8l24uu2sBXep/FJAiMN0sU9OPG9hWsiiw576FTMWA
         hp+3XzyXuESTv7yzFFiUxgtH4dJUG181i5NQbxEtjvCOkVxeh7yTSFjlq4zAmtdlf7OW
         I0vA==
X-Gm-Message-State: AOJu0YwTKqgtKdaUDgQvpWbSlHLarLVZmV4iB0ZOpipi8eUrrYlt42iA
	jr6HszEAawMHEYaS4oAsNXDzTUsUSK8=
X-Google-Smtp-Source: AGHT+IGV2PZG/B+OHczosbDdqsf+QpfooFy/ZeSfuCRhg9oRcMwUt6E8u1orky5yXTZL+T20D3LSNw==
X-Received: by 2002:a05:6358:3423:b0:170:e321:ce4b with SMTP id h35-20020a056358342300b00170e321ce4bmr615461rwd.44.1702310942498;
        Mon, 11 Dec 2023 08:09:02 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id t13-20020a056214118d00b0067a2b91f969sm3389881qvv.117.2023.12.11.08.09.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 08:09:02 -0800 (PST)
Message-ID: <6d5bf4fd-0a27-4872-a09b-7342f5613f71@gmail.com>
Date: Mon, 11 Dec 2023 11:08:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <vm1xdcnyWXJrTZZNIqeHWXe1bKjQrJrryvLEFqLsmo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <vm1xdcnyWXJrTZZNIqeHWXe1bKjQrJrryvLEFqLsmo@lists.ettus.com>
Message-ID-Hash: FB4H7WIKWP2PNAK62RG364QFKIQRV4SW
X-Message-ID-Hash: FB4H7WIKWP2PNAK62RG364QFKIQRV4SW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FB4H7WIKWP2PNAK62RG364QFKIQRV4SW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5315718931553647456=="

This is a multi-part message in MIME format.
--===============5315718931553647456==
Content-Type: multipart/alternative;
 boundary="------------6Q95KMyUyHL7y1oizIzZkSDK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6Q95KMyUyHL7y1oizIzZkSDK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/12/2023 10:52, purva.joshi@phd.unipi.it wrote:
>
> Hi Marcus,
>
> Kindly check here.
>
> <<<< lsblk
>
> NAME MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
>
> loop0 7:0 0 4K 1 loop /snap/bare/5
>
> loop1 7:1 0 63,3M 1 loop /snap/core20/1828
>
> loop2 7:2 0 46M 1 loop /snap/snap-store/638
>
> loop3 7:3 0 49,9M 1 loop /snap/snapd/18357
>
> loop4 7:4 0 346,3M 1 loop /snap/gnome-3-38-2004/119
>
> loop5 7:5 0 91,7M 1 loop /snap/gtk-common-themes/1535
>
> loop6 7:6 0 40,9M 1 loop /snap/snapd/20290
>
> loop7 7:7 0 74,1M 1 loop /snap/core22/1033
>
> loop8 7:8 0 12,3M 1 loop /snap/snap-store/959
>
> loop9 7:9 0 349,7M 1 loop /snap/gnome-3-38-2004/143
>
> loop10 7:10 0 497M 1 loop /snap/gnome-42-2204/141
>
> sda 8:0 0 931,5G 0 disk
>
> =E2=94=94=E2=94=80sda1 8:1 0 465,7G 0 part /
>
I can't really help you do Linux system management -- that's what your=20
local lab support people are for.=C2=A0=C2=A0 I don't see any
 =C2=A0 SD-card device listed there -- the "sda" device is your main hard=
-disk.



--------------6Q95KMyUyHL7y1oizIzZkSDK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/12/2023 10:52,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:purva.joshi@ph=
d.unipi.it">purva.joshi@phd.unipi.it</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:vm1xdcnyWXJrTZZNIqeHWXe1bKjQrJrryvLEFqLsmo@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>Kindly check here. </p>
      <p>&lt;&lt;&lt;&lt; lsblk</p>
      <p>NAME MAJ:MIN RM SIZE RO TYPE MOUNTPOINT</p>
      <p>loop0 7:0 0 4K 1 loop /snap/bare/5</p>
      <p>loop1 7:1 0 63,3M 1 loop /snap/core20/1828</p>
      <p>loop2 7:2 0 46M 1 loop /snap/snap-store/638</p>
      <p>loop3 7:3 0 49,9M 1 loop /snap/snapd/18357</p>
      <p>loop4 7:4 0 346,3M 1 loop /snap/gnome-3-38-2004/119</p>
      <p>loop5 7:5 0 91,7M 1 loop /snap/gtk-common-themes/1535</p>
      <p>loop6 7:6 0 40,9M 1 loop /snap/snapd/20290</p>
      <p>loop7 7:7 0 74,1M 1 loop /snap/core22/1033</p>
      <p>loop8 7:8 0 12,3M 1 loop /snap/snap-store/959</p>
      <p>loop9 7:9 0 349,7M 1 loop /snap/gnome-3-38-2004/143</p>
      <p>loop10 7:10 0 497M 1 loop /snap/gnome-42-2204/141</p>
      <p>sda 8:0 0 931,5G 0 disk </p>
      <p>=E2=94=94=E2=94=80sda1 8:1 0 465,7G 0 part /</p>
    </blockquote>
    I can't really help you do Linux system management -- that's what
    your local lab support people are for.=C2=A0=C2=A0 I don't see any<br=
>
    =C2=A0 SD-card device listed there -- the "sda" device is your main
    hard-disk.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:vm1xdcnyWXJrTZZNIqeHWXe1bKjQrJrryvLEFqLsmo@lists.ettus.com"><=
span
      style=3D"white-space: pre-wrap">
</span></blockquote>
    <br>
  </body>
</html>

--------------6Q95KMyUyHL7y1oizIzZkSDK--

--===============5315718931553647456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5315718931553647456==--
