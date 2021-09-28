Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD1641A513
	for <lists+usrp-users@lfdr.de>; Tue, 28 Sep 2021 04:03:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D80A38446A
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 22:03:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BkykvLfS";
	dkim-atps=neutral
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D44C8383BD2
	for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 22:03:06 -0400 (EDT)
Received: by mail-qv1-f52.google.com with SMTP id x9so6314492qvn.12
        for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 19:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=07Y6pdYiLpeWO9HNOVlF30ALzaiNJ4W69DizlkByypY=;
        b=BkykvLfSkgW5NgRnlC+ZAh4XYnLqSZAJDv1YzEAQSc49yY9DaBDV31UgJpRsF8Gytx
         lO+xqCpAiqK04Y112dfHJzwJDF+rumu4ST0aI7XgGElXZha5V/H+PmrmvG0NBS5ygTN5
         /GA/dUOAZUFu48PIN0RyvbOBurXeyN4Ld2RyiKnb0xtuBmBOnosL/yQNQulKfbSaYFys
         HobLGOHsjux9TQcPxWHWQGZXBv5KcTumLT8/yZepsya5+SkT9d/SU9u41gYEur+fAXIb
         x+vtWdXxTv5kxUxjgTQe2mxu0NxYRNFjpwYVdI1PcN4UgMBT0UEZlOtrczdjXnSrUH3k
         ICYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=07Y6pdYiLpeWO9HNOVlF30ALzaiNJ4W69DizlkByypY=;
        b=x3lAuhFmZVLoAl+lJDDPCkx0G5Ddgfv3FyG6EFjySc+QiTafqo66xY32I8Z+SbzkL4
         7ywljPj/wngXjSo/l/NCF7Dkyc5BcPM+GJzf12Ly/8rr9oUqVL+maqaYEzTgWjvmiSkS
         KMbfNOOQl4jgEB12fqpR4e8FMGnTRy3jBataoLdXm1cgPry2SBEH+ONmnQoDJuSSmDa8
         Z1smIb9q664ch1o1qsVPgc9ENGrYpCBPkPALw3GB7PULiFzYYlKCS7iqW1ORSk9n+8BH
         Ja9pLzDkVmhhLJ/4qu3YZpXYntNTFX+grWwnlTKZYGJitc2W0VwBGolNMlPhvjfnXgW4
         KO6Q==
X-Gm-Message-State: AOAM531ah3M8wplMviDDs+wE75C4KAe+LsMdMyd9QCc0HFE18usRHPpJ
	CGl+MfQiI0kmN9KCb7CjUyQR5xg2mFI6eQ==
X-Google-Smtp-Source: ABdhPJx3CV1rvNHDQXDgRdiZjJJ5pel96csY3nQvXU4ZADidiHJJngMjBQ+7a+ICDRvJtJfQUaeV6g==
X-Received: by 2002:a0c:aa15:: with SMTP id d21mr2993444qvb.18.1632794586036;
        Mon, 27 Sep 2021 19:03:06 -0700 (PDT)
Received: from [192.168.2.246] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id m11sm4282441qkh.112.2021.09.27.19.03.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Sep 2021 19:03:05 -0700 (PDT)
To: Tellrell White <t_whit_87@yahoo.com>
References: <599675072.1235424.1632788672233@mail.yahoo.com>
 <AF84E197-4329-4C6B-A48D-2DDBAE9AE5C9@gmail.com>
 <351392126.1248499.1632790971208@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <fd780300-9771-fab7-e050-aa66bc1aa17f@gmail.com>
Date: Mon, 27 Sep 2021 22:03:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <351392126.1248499.1632790971208@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: MQPTJFBGX56K4Q5HBLOSVO6SIHLIGO34
X-Message-ID-Hash: MQPTJFBGX56K4Q5HBLOSVO6SIHLIGO34
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems cross compiling for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MQPTJFBGX56K4Q5HBLOSVO6SIHLIGO34/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7189724959491392339=="

This is a multi-part message in MIME format.
--===============7189724959491392339==
Content-Type: multipart/alternative;
 boundary="------------8831B0CA625B5692CAE36777"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8831B0CA625B5692CAE36777
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-27 9:02 p.m., Tellrell White wrote:
> Marcus
>
> From looking under sysroot, it appears that there is stuff under it as=20
> shown here
>
>
> apg@apg-virtual-machine:/usr/local/oecore-x86_64/sysroots/cortexa9t2hf-=
neon-oe-linux-gnueabi$=20
> ls
> bin=C2=A0=C2=A0 data=C2=A0 etc=C2=A0=C2=A0 lib=C2=A0=C2=A0=C2=A0 mnt=C2=
=A0=C2=A0 run=C2=A0=C2=A0 sys=C2=A0 usr
> boot=C2=A0 dev=C2=A0=C2=A0 home=C2=A0 media=C2=A0 proc=C2=A0 sbin=C2=A0=
 tmp=C2=A0 var
>
>
> I looked into some of the directores like /bin, /lib, and /boot and=20
> there are things within the directories so there is stuff there. Do I=20
> need to list sysroot under PATH so that it can be seen? Also, am I=20
> using/calling the cross-compiler correctly from the command line as=20
> indicated above?
>
>
I just downloaded the SDK myself, and ran the setup script, and used $CC=20
in place of what I would normally use (to the extent that I even do any=20
C coding
 =C2=A0 anymore).=C2=A0 It worked just fine.



--------------8831B0CA625B5692CAE36777
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-27 9:02 p.m., Tellrell Whit=
e
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:351392126.1248499.1632790971208@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp2496375yahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Marcus <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">From looking under sysroot=
,
          it appears that there is stuff under it as shown here<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>apg@apg-virtual-machine:/usr/local/oecore-x86_64/sysroots/=
cortexa9t2hf-neon-oe-linux-gnueabi$
            ls<br>
            bin=C2=A0=C2=A0 data=C2=A0 etc=C2=A0=C2=A0 lib=C2=A0=C2=A0=C2=
=A0 mnt=C2=A0=C2=A0 run=C2=A0=C2=A0 sys=C2=A0 usr<br>
            boot=C2=A0 dev=C2=A0=C2=A0 home=C2=A0 media=C2=A0 proc=C2=A0 =
sbin=C2=A0 tmp=C2=A0 var<br>
            <div><br>
            </div>
            <div><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">I looked into some of =
the
              directores like /bin, /lib, and /boot and there are things
              within the directories so there is stuff there. Do I need
              to list sysroot under PATH so that it can be seen? Also,
              am I using/calling the cross-compiler correctly from the
              command line as indicated above?<br>
            </div>
          </div>
          <div><br>
          </div>
        </div>
        <br>
      </div>
    </blockquote>
    I just downloaded the SDK myself, and ran the setup script, and used
    $CC in place of what I would normally use (to the extent that I even
    do any C coding<br>
    =C2=A0 anymore).=C2=A0 It worked just fine.<br>
    <br>
    <br>
  </body>
</html>

--------------8831B0CA625B5692CAE36777--

--===============7189724959491392339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7189724959491392339==--
