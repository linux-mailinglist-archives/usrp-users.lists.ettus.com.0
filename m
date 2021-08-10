Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7AF3E5E81
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 16:59:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C3C33848D3
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 10:59:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KasZNp5U";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 3EAEB3849D3
	for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 10:58:34 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id t3so21345391qkg.11
        for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 07:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=llb4p4LwUywf0N1wtHEykgZjlV4+rdbX2RZcBPwY274=;
        b=KasZNp5UQPlmh/W/TEYr/kWQ2TdaNEnmBbe74SkdmvWX5ZMDjO4DJkZfJnE2dxqKtT
         wzlxOMtqxLJlxo59wprcCkFkDwGEs0FIw570MAuUsVhnq54cUAOBtcL+gYef4fvpgFoI
         DAUFchS4gaNk2zQnF/lH/LX4sMKDR3cq9GH0O/Pym1K9EstnL94do1CPhyoMAWwAIEqU
         hkymf0AKknP7YpqWrEkx2qysWzUNZEsHf87TfC6y781fdVz71yB+W+xmL+KUKog4x5/c
         FJiW4znnHkaRp63l2jburql9gy68UTIT19MtrSrdNFSc379xZfKeIM5/WtO5FNcDhxm9
         uljA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=llb4p4LwUywf0N1wtHEykgZjlV4+rdbX2RZcBPwY274=;
        b=sJUo5JopW5nTnOjyCmsMJNEWXn6qShfGYIpJtOsiDyGG7u8nHSvKf6AeSEtpaNZoim
         FX8yI5uA0xYoOULvW7K+miI46XIPZ33136eRwcdBrUcYndu3C5/RUg+UeXHeav8DBhux
         B0MYs4atQpfmzdC5BPFWL2lxr8ACYI9sCjVT35kmNw7w/c71u6kLHtwr47etTbu82Ie/
         IylFnR1+uf2Q8/mJUQzp7KcT4nkKZ7yaI586TPyehvNHPRHxGnh4ka8kVDpINQcYjOJt
         X+JdkAgzDjgIDwf3kqrimCPyyyS+4EPyMGkcMPBVZCzOIPI4LUdKdrvfnUobrZfTJd7t
         LkBw==
X-Gm-Message-State: AOAM533sA/tUbO6ALdpJWXl0Zg0UXsH9oGdU3JYHRgUGomofnYwTFo73
	wy7klD2VeyEBXYyJthD7IB/SiLINI+/ygQ==
X-Google-Smtp-Source: ABdhPJzDPE5xpMTnmJ7hWTvaxrCCHC1qSAQjsp9Vpcu4u1rEke+CTiFoD5upjjH4jWHsrl3eLqP8Aw==
X-Received: by 2002:a05:620a:16d4:: with SMTP id a20mr15714478qkn.34.1628607513483;
        Tue, 10 Aug 2021 07:58:33 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v7sm11089884qkd.41.2021.08.10.07.58.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Aug 2021 07:58:33 -0700 (PDT)
Message-ID: <61129418.2030705@gmail.com>
Date: Tue, 10 Aug 2021 10:58:32 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Brian Padalino <bpadalino@gmail.com>,
 Jonathan Tobin <Tobin@augustusaero.com>
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com> <610DE851.70308@gmail.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com> <610EA718.1080908@gmail.com> <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com> <610EBFD9.2060400@gmail.com> <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com> <BN7PR05MB4500466BB13226803348260AD5F79@BN7PR05MB4500.namprd05.prod.outlook.com> <CAEXYVK7-jo67VbrkrCZ6YqDzoVsY-D7JXBYwbFhOrrJOP0eWag@mail.gmail.com>
In-Reply-To: <CAEXYVK7-jo67VbrkrCZ6YqDzoVsY-D7JXBYwbFhOrrJOP0eWag@mail.gmail.com>
Message-ID-Hash: GTHJVJ6T3XTCVQULYYTF7CBQOBRZJRTH
X-Message-ID-Hash: GTHJVJ6T3XTCVQULYYTF7CBQOBRZJRTH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GTHJVJ6T3XTCVQULYYTF7CBQOBRZJRTH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4901984885195608380=="

This is a multi-part message in MIME format.
--===============4901984885195608380==
Content-Type: multipart/alternative;
 boundary="------------090900050309060901010103"

This is a multi-part message in MIME format.
--------------090900050309060901010103
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/10/2021 10:34 AM, Brian Padalino wrote:
> On Tue, Aug 10, 2021 at 9:39 AM Jonathan Tobin <Tobin@augustusaero.com 
> <mailto:Tobin@augustusaero.com>> wrote:
>
>     Hi Brian,
>
>     No - only intention would be to receive for 10 seconds and save
>     data. What would you suggest?
>
>
> Modify the program to write out to a file on a high performance drive 
> and receive smaller parts at a time from UHD.
>
> Brian
>
I suspect what's going on is that the various streaming modes are 
implemented by the HARDWARE, and the control-word for
   "NUM_SAMPS_AND_DONE" prior to UHD 4.x was only 32 bits--looks like 
it's now 48 bits.



--------------090900050309060901010103
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/10/2021 10:34 AM, Brian Padalino
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAEXYVK7-jo67VbrkrCZ6YqDzoVsY-D7JXBYwbFhOrrJOP0eWag@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Tue, Aug 10, 2021 at 9:39 AM Jonathan Tobin
          &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:Tobin@augustusaero.com">Tobin@augustusaero.com=
</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">Hi
                Brian,</div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)"><br>
              </div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">No
                - only intention would=C2=A0be=C2=A0to receive for 10 sec=
onds and
                save data. What would you suggest?</div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>Modify the program to write out to a file on a high
            performance drive and receive smaller parts at a time from
            UHD.</div>
          <div><br>
          </div>
          <div>Brian</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">
              <div>
                <div dir=3D"ltr">
                  <div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    I suspect what's going on is that the various streaming modes are
    implemented by the HARDWARE, and the control-word for<br>
    =C2=A0 "NUM_SAMPS_AND_DONE" prior to UHD 4.x was only 32 bits--looks =
like
    it's now 48 bits.<br>
    <br>
    <br>
  </body>
</html>

--------------090900050309060901010103--

--===============4901984885195608380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4901984885195608380==--
