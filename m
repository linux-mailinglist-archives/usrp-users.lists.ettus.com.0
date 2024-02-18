Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3740B859441
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 03:57:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D90E381555
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 21:57:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708225065; bh=kXovQWEJ6aY0pQpGRDrsk/Az5a3DXv/m6CJ/4TBZAbA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PdX8hn/gT4BjKcDfntL1mJYx1NudoaZzxibsY+o78L0DR24dMGC8UAufc6FzNq3bD
	 97lkDIxi766qvvswLWNjGfZHN9HFZpblZdWcuYHRsIxtf4oCw8QXxieJzLwdAImGS5
	 pg9/eKVX8MILAieqiAAC6kG5uh/Y2BITMIowmDBk4NrSbzhmwkn5/dce/ke/WIW1sA
	 ZkzT2NgBlz9JhieDyWtm5JYYtgJBmSC7en0wLafo4Li/w+HxB7ti0PB/CfKa4h7b4X
	 PUvey4k2OjlNrGUbGaGFQ8NkNyZ2OpYwL0ii4RRhAnlAB61AWSKIPr1WQ5A0Bvw543
	 1Zxo3Bx2KD7tA==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 73FFC380AC7
	for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 21:57:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kscwf4GT";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-42a029c8e76so24831601cf.2
        for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 18:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708225031; x=1708829831; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hiB4SUN99BFOtgdSb8vpiAdQdsbvuJOkcMxDtEgMJLk=;
        b=Kscwf4GTMvtqltTsRO/AL9Zm6/QCeQell7FnYrj3nKkBqakNs9Qz59MfwFIDw06PGG
         3KhvqMEW5BdFaaW3iCUG7W5fXH6nwCID7vJLNzrxRH6qlx7SUzfOxxlGvKQ+wqcPjsUE
         R08K0KcckxBwhSYbYpvRPgtToSXR43fWAB96qghvvgl0RCdw6h1o55fWBlEqBp1VU4S6
         S7xSezKZYTWRUkr2omWfwBau7jddc+w9neAPbEVc42jivDuXzFTWJ8sn544uYzD6KPW1
         pHQPzYYQcSp2oRzMCAjHdgOOszcDCL2DHe22Rhz9m+SNToTn/fAIYqZLmEbwFihzZvK5
         zHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708225031; x=1708829831;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hiB4SUN99BFOtgdSb8vpiAdQdsbvuJOkcMxDtEgMJLk=;
        b=qM01lECAXJge8CNDpPZ3/uiaybEmi2zXwm2V8TFTo1FW6PRjyqhF8UcGi6wrISDLCG
         Ls9gLpMW2B0q9Oe+EFqsPCVbbomHei1wk6/vkM/XxId1ao5hVhtOWPb852gHjwemnZaY
         e4tjf54gukOEsY7xQSOeZPMDeVXBolMaveyOMtQ1uY/h9EIvYFXUgijben7Y3hCm4Gac
         IB6BGCC0Uc6YlTlDAfT0T+TQZ19IxNqPklYYiao2S9dy3f6bhNeAXXKi3WodOxVMPFQN
         wwRDGZXPkVzFGfszZu703+cJLeKmiU6ZTfFbQoinXKcNOdhaQMxNvQL1oRMqi93LXGg5
         7eGw==
X-Gm-Message-State: AOJu0YwkrmpZeRtCVYfaOanf0BwtZncslDMZPR3KZFSW0RDBGrAfZCU4
	w+eTddA3+tqIq8uaawmJz6G9GUy6MJQAeBQgw2B3yjHIiPYd5Pe5ZTQoAAOy2D0=
X-Google-Smtp-Source: AGHT+IG7IqTOzBz+ZwrFau1z+nMnUZ7NHNaW6aW3HSh7rFneEQl3ptir1iD8z8e61BdJIwRgV8Msgg==
X-Received: by 2002:ac8:7d04:0:b0:42c:953:81e7 with SMTP id g4-20020ac87d04000000b0042c095381e7mr11633572qtb.55.1708225030943;
        Sat, 17 Feb 2024 18:57:10 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id m15-20020ae9e00f000000b00785d82e0567sm1303933qkk.29.2024.02.17.18.57.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 18:57:10 -0800 (PST)
Message-ID: <cab295b9-3b63-4cf0-a8c6-96f1c7bf7a27@gmail.com>
Date: Sat, 17 Feb 2024 21:57:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jim Grubb <jimgrubb@me.com>
References: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
Message-ID-Hash: CVYNUUPOAQ5IPUZSQIVXACOPY6CU4WL5
X-Message-ID-Hash: CVYNUUPOAQ5IPUZSQIVXACOPY6CU4WL5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running uhd 4.1 and still having the issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CVYNUUPOAQ5IPUZSQIVXACOPY6CU4WL5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7563794826439147016=="

This is a multi-part message in MIME format.
--===============7563794826439147016==
Content-Type: multipart/alternative;
 boundary="------------Z0ooByufzalwk8EMZXnMk5xA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Z0ooByufzalwk8EMZXnMk5xA
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
The other thing that just occurred to me is that your host controller=20
may not be supplying enough power.=C2=A0 This should "never"
 =C2=A0 happen these days, but you might try using one of those "Y" USB=20
cables that can provide extra power from another USB port
 =C2=A0 to a downstream device.


--------------Z0ooByufzalwk8EMZXnMk5xA
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
    The other thing that just occurred to me is that your host
    controller may not be supplying enough power.=C2=A0 This should "neve=
r"<br>
    =C2=A0 happen these days, but you might try using one of those "Y" US=
B
    cables that can provide extra power from another USB port<br>
    =C2=A0 to a downstream device.<br>
    <br>
    <br>
  </body>
</html>

--------------Z0ooByufzalwk8EMZXnMk5xA--

--===============7563794826439147016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7563794826439147016==--
