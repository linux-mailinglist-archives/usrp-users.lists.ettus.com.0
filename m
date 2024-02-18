Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D88B85942B
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 03:49:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C390383B63
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 21:49:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708224598; bh=f/IPtD5sjL+P9m1q5vhQSnH7MCy3EJZImw7dvjotd/U=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=h6jm05dszuc6QUZmDgfPyZVnl1R6Thxpax5rPb+S7Vvys/0gcwGXUvZk7smu5++I3
	 P1ZkO5EQim0i9k/h8MNde9rwdGaTRNwB7b/tIxewPOF7ShE+zZNEXs04ZfmFrNFxYg
	 DUkGstEmaqXGrqBUZkShBtmk1508k2QJvdVtusTynkjAtRe4Hna7L6a0yYtRHevkMB
	 sUPPE5Upu/wwICwyFFFCBoV4dAn4ZXb5W8XIQNCM0jqUD9eoW6W5FniRDMFwmaW5S6
	 8SobY+YnuJRow/AWAsnoBIXFBJCpMpn7VsXrApTqDlKxOeBUn2s/SJGfzyN+Lg0lgK
	 qhfjZlFqcQUig==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id C3BAB381555
	for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 21:49:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N4TdaxvW";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-429de32dad9so20854601cf.2
        for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 18:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708224564; x=1708829364; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4EGTjHi8Hnelm1+C8oVBVK2azvkcPZkSe6T39W0TcLY=;
        b=N4TdaxvWxxVqtyOVBVQQ/BO56r3if9Jbe8YXdmGrBucy9ZE6gvNKSfPX3nSruyho5k
         2Kj/71+bImCnR9RHBkqo437DfCaUoH3lKXBGjlETHntwYWLbvpXEdYM4vFxQsdUmd416
         LtQnur7I/ytzVYTqCMj6XwyCq0GjoABW8m4bEZaVs/dP6PpB83TJl2z/4ttiPDJIA8XQ
         2bUMM9/ypVzjAvrC4pG7VOJVwjyVTILK6f85QnXQ+uoZo+KazeM7CJHyDYlUNrwGZ371
         i1x8u0/gb58xkC/HrNBjP3LHl2PkpHRb5n/Kt/vB18/ezUpRq8P7Wpa2f01rnXo5eeuv
         W4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708224564; x=1708829364;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4EGTjHi8Hnelm1+C8oVBVK2azvkcPZkSe6T39W0TcLY=;
        b=nB4gce/bA4Nx9D7hN1NXsjU9VsEMgUWKyS31pV54o1grBpCQ1IDuDPbgIDaXX3YwCb
         FzdeFZlMfkxibDdzZev/vdorS7rBIjnW5Kd6QtM+0WZAETxzeeBuYN7IXYshjKnR51C/
         lABDsZAHB4fFgbyPn5QUTg5CjoqmMQ3z79SyptkTuc+vefIIesY6AjXG4+w5Hx4KLwYt
         aOZvWKiaKYfirrSie2AULdiy3f1u5LL7fropvQ1fJGitVeTa0jhZHt8TScAO4kbsvvzp
         KsHQXPyKX41wcFaNc5Uk9SZEjDUvvgTijG7nAXwF+KdclpjTWykAA81hqunK0k8Dp+C3
         dYYA==
X-Gm-Message-State: AOJu0YzMfJ9WmJlSQ4+InMh/5oyf8Ky9QJ8GK4iXpR7CkkZVZpR1MGcc
	c06gncLBQ30f68q1jG/K3Nm6YSXmo/hFV1W2FG4Jph1+Haiy/RC9
X-Google-Smtp-Source: AGHT+IE7O500lwiNvRSeTLp4KqlgBZ4L01KSj77BHcvaZw7HXFly35dCHBoY1QqTGosKRtvmNgXieg==
X-Received: by 2002:ac8:4e93:0:b0:42c:5d43:53cd with SMTP id 19-20020ac84e93000000b0042c5d4353cdmr11656358qtp.29.1708224563993;
        Sat, 17 Feb 2024 18:49:23 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id y14-20020ac8524e000000b0042c774f882asm1323769qtn.73.2024.02.17.18.49.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 18:49:23 -0800 (PST)
Message-ID: <c42254d7-dbcd-4df4-a160-32ca569f05fd@gmail.com>
Date: Sat, 17 Feb 2024 21:49:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jim Grubb <jimgrubb@me.com>
References: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
Message-ID-Hash: T43NV2BIQEE4XRGXTVX7GDDRFMXSKOOF
X-Message-ID-Hash: T43NV2BIQEE4XRGXTVX7GDDRFMXSKOOF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running uhd 4.1 and still having the issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T43NV2BIQEE4XRGXTVX7GDDRFMXSKOOF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4331982881678557719=="

This is a multi-part message in MIME format.
--===============4331982881678557719==
Content-Type: multipart/alternative;
 boundary="------------rZZ1Eo65RTI8etB3QodAjSbB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rZZ1Eo65RTI8etB3QodAjSbB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/02/2024 21:44, Jim Grubb wrote:
> I was able to get UHD 4.1.0.5-3 installed after removing the ppa.=20
> =C2=A0Unfortunately I'm still running into a problem.
>
> Any ideas would be=C2=A0appreciated.
> Thanks
> j
>
> jim@pop-os:/usr/lib/uhd/utils$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-3
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
> =C2=A0 =C2=A0 serial: 3293561
> =C2=A0 =C2=A0 name: B205i
> =C2=A0 =C2=A0 product: B205mini
> =C2=A0 =C2=A0 type: b200
>
>
> jim@pop-os:/usr/lib/uhd/utils$ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-3
> [INFO] [B200] Detected Device: B205mini
> [INFO] [B200] Operating over USB 3.
> [ERROR] [UHD] Exception caught in safe-call.
> =C2=A0 in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl=
()
> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66
> this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout=20
> < _timeout
> =C2=A0 in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>
> Error: AssertionError: accum_timeout < _timeout
> =C2=A0 in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>
>
If you unplug the device, and re-do the "probe", does it load the=20
firmware and FPGA image normally?


--------------rZZ1Eo65RTI8etB3QodAjSbB
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/02/2024 21:44, Jim Grubb wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div><font face=3D"Monaco">I was able to get UHD 4.1.0.5-3 installe=
d
          after removing the ppa. =C2=A0Unfortunately I'm still running i=
nto
          a problem.</font></div>
      <div><font face=3D"Monaco"><br>
        </font></div>
      <div><font face=3D"Monaco">Any ideas would be=C2=A0appreciated.</fo=
nt></div>
      <div><font face=3D"Monaco">Thanks</font></div>
      <div><font face=3D"Monaco">j</font></div>
      <div><font face=3D"Monaco"><br>
        </font></div>
      <div>
        <div><font face=3D"Monaco">jim@pop-os:/usr/lib/uhd/utils$
            uhd_find_devices</font></div>
        <div><font face=3D"Monaco">[INFO] [UHD] linux; GNU C++ version
            11.2.0; Boost_107400; UHD_4.1.0.5-3</font></div>
        <div><font face=3D"Monaco">--------------------------------------=
------------</font></div>
        <div><font face=3D"Monaco">-- UHD Device 0</font></div>
        <div><font face=3D"Monaco">--------------------------------------=
------------</font></div>
        <div><font face=3D"Monaco">Device Address:</font></div>
        <div><font face=3D"Monaco">=C2=A0 =C2=A0 serial: 3293561</font></=
div>
        <div><font face=3D"Monaco">=C2=A0 =C2=A0 name: B205i</font></div>
        <div><font face=3D"Monaco">=C2=A0 =C2=A0 product: B205mini</font>=
</div>
        <div><font face=3D"Monaco">=C2=A0 =C2=A0 type: b200</font></div>
        <div><font face=3D"Monaco"><br>
          </font></div>
        <div><font face=3D"Monaco"><br>
          </font></div>
        <div><font face=3D"Monaco">jim@pop-os:/usr/lib/uhd/utils$
            uhd_usrp_probe</font></div>
        <div><font face=3D"Monaco">[INFO] [UHD] linux; GNU C++ version
            11.2.0; Boost_107400; UHD_4.1.0.5-3</font></div>
        <div><font face=3D"Monaco">[INFO] [B200] Detected Device: B205min=
i</font></div>
        <div><font face=3D"Monaco">[INFO] [B200] Operating over USB 3.</f=
ont></div>
        <div><font face=3D"Monaco">[ERROR] [UHD] Exception caught in
            safe-call.</font></div>
        <div><font face=3D"Monaco">=C2=A0 in virtual
            b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()</font=
></div>
        <div><font face=3D"Monaco">=C2=A0 at
            ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66</font></div>
        <div><font face=3D"Monaco">this-&gt;peek32(0);
            _async_task.reset(); -&gt; AssertionError: accum_timeout
            &lt; _timeout</font></div>
        <div><font face=3D"Monaco">=C2=A0 in uint64_t
            b200_radio_ctrl_core_impl::wait_for_ack(bool)</font></div>
        <div><font face=3D"Monaco">=C2=A0 at
            ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</font></div=
>
        <div><font face=3D"Monaco"><br>
          </font></div>
        <div><font face=3D"Monaco">Error: AssertionError: accum_timeout
            &lt; _timeout</font></div>
        <div><font face=3D"Monaco">=C2=A0 in uint64_t
            b200_radio_ctrl_core_impl::wait_for_ack(bool)</font></div>
        <div><font face=3D"Monaco">=C2=A0 at
            ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</font></div=
>
      </div>
      <div><br>
      </div>
      <div><br>
      </div>
    </blockquote>
    If you unplug the device, and re-do the "probe", does it load the
    firmware and FPGA image normally?<br>
    <br>
    <br>
  </body>
</html>

--------------rZZ1Eo65RTI8etB3QodAjSbB--

--===============4331982881678557719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4331982881678557719==--
