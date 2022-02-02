Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B974A73FF
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:57:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F38E8385323
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 09:57:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lhMMJBE0";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 732E13852FF
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 09:56:12 -0500 (EST)
Received: by mail-qk1-f175.google.com with SMTP id c189so18305036qkg.11
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 06:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=37RDojA+weae00nArhIaTFjsJhS/Em/tT9v9jjThf78=;
        b=lhMMJBE0bdeDYj18QUvCydGR5MoMMON2tWOSjK5AoN2r8jIny+NcwqJ9cKbzwV9DHU
         4ObiBCW2rqtfVFkIOKjUXiijbnZ7DV6qgl4BRot2mdUHCL0mQoqZWIbMB8sJolXBsprm
         voA12USXgXsZcqPRr3IMH7bDJS6x1caaNVM0XjeL7u30UdeigxUriTj6PvPxsENL0s/A
         5im7bD+z8tk7iErOpU58HQz9idGpcAA8li35yCAhjPwM6bKGFLAZVVl7/wDvDX4Kdg/o
         hNVVmM6PJdZLzHrNU3FFHTaKBPIK/b0uFNNtQjF07SV084PcX4Zk26IM3cFWNsDA0OtF
         Sj9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=37RDojA+weae00nArhIaTFjsJhS/Em/tT9v9jjThf78=;
        b=sfX3c1RTOBcmJ3DQY/QP1QBBF/sZ+CSRyF+MrZ/6X/HzJkPelqIKxdeua2o2B2DcFa
         9JPY2DHogftQVUUPKfziUCIkjuyAdWAx8gOgCy++6ctDGyGQCmo8ajdxuuw45lh4l+sW
         k7AJz6irh6HNWjqhf7VqAWp0xhA5Gg3dI+WCV45+UiSMyoufXM8UYnwA+ZA1BOKJAfwi
         ilx5qYWnaQxESHxlDdFDwGQqKY4MTfcEYY4ajtQrv4ikIfVvD5lsftiLrahGPcBNw3Ge
         EKZHV37c07SafxTvs0qNQcNPAZJZsUcAJEEXea3CYMnhqkur5HTgQ5faPi9BegGB3UkN
         7M8Q==
X-Gm-Message-State: AOAM531kMjkiwPx30YVogWL8mkwet6506TrMTq5l9JcCh90wXNhMPAAw
	VfMDWBkKHJqxL+EHtTjHvRJbHFs3lG9NUg==
X-Google-Smtp-Source: ABdhPJzNC6yVj08S8QKWwJ8iPxHxqrbTjE/AL/GLIWmXCHAgA5PWk6LfJcwLkSX2FG5RSaUrd20hXQ==
X-Received: by 2002:a05:620a:1a18:: with SMTP id bk24mr20606852qkb.567.1643813771832;
        Wed, 02 Feb 2022 06:56:11 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id k6sm13006331qko.68.2022.02.02.06.56.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 06:56:11 -0800 (PST)
Message-ID: <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
Date: Wed, 2 Feb 2022 09:56:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jim Palladino <jim@gardettoengineering.com>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: VZ74YEIZ7QQCKANBM3GBX42WFF3IIGLN
X-Message-ID-Hash: VZ74YEIZ7QQCKANBM3GBX42WFF3IIGLN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VZ74YEIZ7QQCKANBM3GBX42WFF3IIGLN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4900430915180514327=="

This is a multi-part message in MIME format.
--===============4900430915180514327==
Content-Type: multipart/alternative;
 boundary="------------tP8CqIoVW2KTYLMkxEQ0KxVM"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tP8CqIoVW2KTYLMkxEQ0KxVM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-02 07:30, Jim Palladino wrote:
> Marcus, thanks for the suggestions. I made sure to set the master=20
> clock rate on both the E320 and N320. In the app I'm developing, I=20
> also tried set_time_unknown_pps() instead of set_time_now() as you=20
> suggested. Unfortunately, neither one of those made a difference.
>
>
I ran test_timed_commands on N310, using UHD 3.15.0.0 (on Ubuntu=20
21.10).=C2=A0 It worked as expected.


--------------tP8CqIoVW2KTYLMkxEQ0KxVM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-02 07:30, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Marcus, thanks for the suggestions. I made sure to set the
        master clock rate on both the E320 and N320. In the app I'm
        developing, I also tried set_time_unknown_pps() instead of
        set_time_now() as you suggested. Unfortunately, neither one of
        those made a difference.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <br>
    </blockquote>
    I ran test_timed_commands on N310, using UHD 3.15.0.0 (on Ubuntu
    21.10).=C2=A0 It worked as expected.<br>
    <br>
    <br>
  </body>
</html>

--------------tP8CqIoVW2KTYLMkxEQ0KxVM--

--===============4900430915180514327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4900430915180514327==--
