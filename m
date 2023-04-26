Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E10546EFA6B
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 20:55:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1B64383C7D
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 14:55:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682535324; bh=4wB6sHACric8TBBMuepmS27nDAxY2dKJ/ROeInGGCEw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=odYkqIbmm0iQthBYws/2JNV/V30kIxZOcPp1ERI18Fyij09G9sX6j3O13XIryOT0e
	 vgPm3ZDmwjJbD9KoBJPPxk9Ny62dQCmKCwq9H375b/MbxIguxYflM/4RkbYuavkOVC
	 ZRkE4aTeNrVFWYuxnF0muGizQ0wVZJ1C+R9NZXEtVHy6Zeeacxwxn7XyaNZr6CMras
	 t2md06/ogzuxd5kVzPYZn4qkgjCbhHtMf9aCvn7IPLcBF7zKRq9RS1WJiVf0jm0/d5
	 2ImOMjvCZwyAA44yYdpUeMyHfvM0EKimWf23dfA+spcQHWlSAQcmdo+ljZFLbnj96h
	 OP2XvnqanNchQ==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 2BF4D380958
	for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 14:54:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e6lsy5GN";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-74df951e897so361573485a.2
        for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 11:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682535281; x=1685127281;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=78YV0NornmHY4BW5Hva0+AJ4Yo0N4zXevIKmEuWWYUY=;
        b=e6lsy5GNrFQF0Co+YHqPkvSwGIRHOwGtmN6afJmw2fPPINOF6+XUAQXtjZaiIcWGrS
         P/WYYonYWrExMqdeXB2XL0wBRxWUlW4cx5bKwH0/aGRn1odqyV4v4Ut5PR4Lr7uHhpcA
         UbGeGy/ka3Fd7Jwq6DX44jE4wcPUKI1MbVPx7pnHFbXFNnagyP2i3fEf+tXqe6DFaLfc
         o8SlLN3X6h3clxJjbM82xUb3bmSva+e5kSQ7YQe3rV4rpDdUC5LGM7CTU0noFRotZNUE
         GOvb/5FnCaK4WvKSd1MkmK+WiW/7Y4p1FOkKKV466BaQbYNI07MM71kbjSof6/6aav7K
         /1UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682535281; x=1685127281;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=78YV0NornmHY4BW5Hva0+AJ4Yo0N4zXevIKmEuWWYUY=;
        b=Nmm5id0t3nxErvlApOfGMj/bDqxHPeOfCt/ba7Qk6ayXuODcCCAvwgbep+0bAu589w
         g2f575JMkYHfwn1HBgn8+a4qWPCJZ1OruqVf/O1CIWvg23OselI5im8tkDRmQPdDQVjk
         EF3pwrq7YU1eIEZRhdWiuKM3bamh0F3qgiruqygDf+j2pBnJjKvXFTbZQnlo+WaKxQVt
         UqC2eTYBxwHabLRN3vTpMu74g3BuNgsQxzYevo5K35k6BkUKnGzl3uKbP8Xe79VFwlCz
         tCe9uMyjDbr16esF5UWk9ENVvYtmTzOIyIZC9mQZmXWhdX6B7pLiIKQLwwG4TZMAyiU6
         EKJQ==
X-Gm-Message-State: AAQBX9cjuYjITNLD0q0JCDiUMMx2oKoNz53dJNqY5F8bG0iTSYDkycn3
	x3mJk1rN+ssd5tZJkKe+CBHH2t+MivQ=
X-Google-Smtp-Source: AKy350aRfnA/LVR3ajnoIe+yZUvob9f6tN3e5OKauByq4OwrZklSgE2h6zfMgyclzG8AP+RNEgD1Dw==
X-Received: by 2002:ad4:5d6c:0:b0:5f1:6892:7435 with SMTP id fn12-20020ad45d6c000000b005f168927435mr40514530qvb.23.1682535281320;
        Wed, 26 Apr 2023 11:54:41 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id k25-20020a0c9719000000b00616640b5041sm493655qvd.15.2023.04.26.11.54.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 11:54:41 -0700 (PDT)
Message-ID: <8906e3a1-4b2f-83e6-b909-b4c9d67e0df2@gmail.com>
Date: Wed, 26 Apr 2023 14:54:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB9126D338E3E787735AF8410DEC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB9126D338E3E787735AF8410DEC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: 6WDGRMOI7CE64TKCRZQXMMD5BRH56Q5R
X-Message-ID-Hash: 6WDGRMOI7CE64TKCRZQXMMD5BRH56Q5R
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK ignores the $UHD_CONFIG_FILE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6WDGRMOI7CE64TKCRZQXMMD5BRH56Q5R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5928964961187000021=="

This is a multi-part message in MIME format.
--===============5928964961187000021==
Content-Type: multipart/alternative;
 boundary="------------H9pceJvn0U2Z9s2qUNP0QXJW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------H9pceJvn0U2Z9s2qUNP0QXJW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/04/2023 14:50, Eugene Grayver wrote:
> Hello,
>
> There appears to be a small bug in the UHD support for DPDK. The=20
> configuration should be read from=C2=A0$UHD_CONFIG_FILE, followed by=20
> ~/.uhd/uhd.conf, followed by ~/.config/uhd.conf.=C2=A0 However, it appe=
ars=20
> that the environment variable is being ignored.=C2=A0 It works with=20
> 'usrp_probe', but not with UHD.
>
> Eugene.
>
>
Which version of UHD?=C2=A0 Built from source?=C2=A0 How installed?



--------------H9pceJvn0U2Z9s2qUNP0QXJW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/04/2023 14:50, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB9126D338E3E787735AF8410DEC659@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        There appears to be a small bug in the UHD support for DPDK.=C2=A0
        The configuration should be read from=C2=A0$UHD_CONFIG_FILE, foll=
owed
        by ~/.uhd/uhd.conf, followed by ~/.config/uhd.conf.=C2=A0 However=
, it
        appears that the environment variable is being ignored.=C2=A0 It
        works with 'usrp_probe', but not with UHD.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        Eugene.</div>
      <div class=3D"elementToProof">
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <div id=3D"Signature">
          <div>
            <div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-fa=
mily:
              Calibri, Arial, Helvetica, sans-serif; font-size: 12pt;
              color: rgb(0, 0, 0); background-color: rgb(255, 255,
              255);">
              <p><span style=3D"font-family: Arial, sans-serif; font-size=
:
                  10pt; color: black;"><span id=3D"ms-rterangepaste-start=
"></span><span
                    style=3D"font-family: Arial, sans-serif; font-size:
                    13.33px; color: rgb(0, 0, 0);"><br>
                  </span></span></p>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Which version of UHD?=C2=A0 Built from source?=C2=A0 How installed?<b=
r>
    <br>
    <br>
    <br>
  </body>
</html>

--------------H9pceJvn0U2Z9s2qUNP0QXJW--

--===============5928964961187000021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5928964961187000021==--
