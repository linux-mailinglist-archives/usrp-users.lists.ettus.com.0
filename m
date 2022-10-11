Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EEC5FBC60
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 22:47:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3016238151A
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 16:47:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665521245; bh=O3fUOcfEe5clAYWNtTS64cu1BVaG6P6j4YbkRF6RSI4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=igCBccTCAR9PRUC6BpQc6sA/ChK9EywkMncV+2k/PrAciKpyqIcR2jHMdomrj7jEE
	 Jgzh346wqrbOjNdKGpMBAsJFL4gWdBEBb9V/ZYuKEe/+mIXZlVlLajAdLtkKMPlRUY
	 SbNr4W+kM0FRCkj1m4s+K27umAgBLAeZQw2+1J506qkdtK4HGB+TdhF4v3KCx23cC1
	 n8AB5Xlpy4Aa+xNBL5sXCKYmHd3MdFBQE3Tudlcu0WAadekI7w3CDXE236cHbXcF5y
	 Q4wEFU1BBGbv/TXfw6s4DpzYIExN4eJJ4vraNm832B6y6YMMGmANAJXU5vmDG9qA1S
	 cqCq0MLVcBX5g==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E6FC380958
	for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 16:46:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i4E47v8D";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id t25so2234384qkm.2
        for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 13:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GLRJr+/nZlQbjl8Ji2bWedSN9nA/WjMC5yiU2UumFN4=;
        b=i4E47v8DF40M9UuN4jzRo43QeKlO0l43NO03LeoQzSoj1ih52N5gaXigpGHlqDWRii
         xS+Xu31HpLPpk7RK/EohbZivwTVuOl7Cts3bLtQFhINlEInzspBYlPmSAOqRqkrOPau+
         XEM+PLw1IvG+HCLug8RB1uIJnx/xUr8+u/CafP7c4u/2tFdQlc3edc1GTocq2nfvLpv5
         NVYboOewQaxDh3LOWuLyNOrtUjV36bA/4FgVJ7f8hbUu1S4jSkLtLQwF61HN6d6rF8r3
         Y6uiOQa4PRW9emVS+8vFEE33lDCjiQiRPGD/SHZ1HHxw9BKgey3i6OFHRDSjBZMfPq4E
         v48A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GLRJr+/nZlQbjl8Ji2bWedSN9nA/WjMC5yiU2UumFN4=;
        b=6lf+v4c00LwJscD2iiiEZNAR47vmwbvqXTk9/Lh158g6A9JYPxGUn4ZTU8sHXOnyXz
         jXcXOXeV/hzIgzBi9QrUAdBvjxkvwmOYVxPUBaLbV8+LyZyn/8GbeMiq4pvtjIqMCr5K
         1DmWiD63vX4+q+oWIAUoTkrY7JMvv9d/wE9UzbuzLFkbBmXUOQC15rJplN1kqAT0DZRD
         pgrXp7MJkOyN34cYaeBpwFJlkvDqhsoHs8G2wBPy9b7j284QXicivJ2Woxq0AsuO4zul
         UHZlZ9xresoDndxdCP7WOOQKV/nrNS+pD3Jr5WTGHhUSkRNzFHx87bwpaih5YWK4LuG+
         Gyaw==
X-Gm-Message-State: ACrzQf2q9hwC4a6EKYEw8Y7K1WkuKWePpW+MCBcL5DGK5sYQkQ8vrTPq
	CFH7kmajYQ5l6DQFC8c3K1cYuT+jx2o=
X-Google-Smtp-Source: AMsMyM4oHJyv4nfy6xqyA2bIUVHnUn6m43nRfhDzEBRdiOXgYmwdCWRW+GomXwe3LKMYDg3CceYECA==
X-Received: by 2002:a05:620a:4488:b0:6ce:8a74:8a31 with SMTP id x8-20020a05620a448800b006ce8a748a31mr17899377qkp.468.1665521175868;
        Tue, 11 Oct 2022 13:46:15 -0700 (PDT)
Received: from [192.168.2.188] (bras-base-smflon1825w-grc-09-174-93-2-50.dsl.bell.ca. [174.93.2.50])
        by smtp.googlemail.com with ESMTPSA id cn12-20020a05622a248c00b0035bb6c3811asm11270582qtb.53.2022.10.11.13.46.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 13:46:15 -0700 (PDT)
Message-ID: <455d697e-ecda-8d67-036f-7661ff1e9cb0@gmail.com>
Date: Tue, 11 Oct 2022 16:46:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <1567317201.188112.1665504920071@mail.yahoo.com>
 <83a99c67-3c6a-869b-bcdd-b0ef258cf240@gmail.com>
 <776005769.270285.1665519818410@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <776005769.270285.1665519818410@mail.yahoo.com>
Message-ID-Hash: 53FD7OTNBSSTGWKVDLBSVFUUVT2ROD2G
X-Message-ID-Hash: 53FD7OTNBSSTGWKVDLBSVFUUVT2ROD2G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0 speed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/53FD7OTNBSSTGWKVDLBSVFUUVT2ROD2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6493788836073195892=="

This is a multi-part message in MIME format.
--===============6493788836073195892==
Content-Type: multipart/alternative;
 boundary="------------rfYQPOaWTGZF5U80bgpTwrLZ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rfYQPOaWTGZF5U80bgpTwrLZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-11 16:23, zhou wrote:
> Thanks Marcus. Yes, I use the get_time_now function to read time=20
> inside USRPs.
>
> I also think the newer UHD versions should be better, but the=20
> measurements tell differently. The queries to USRPs are sequential.
> There are 16 USRPs using UHD 4.1.0. I query them sequentially and the=20
> time intervals one example is as follows (unit: ms):
> 1.683691
> 1.606288
> 1.629145
> 1.790804
> 1.685894
> 1.736507
> 1.471674
> 1.424962
> 1.460004
> 1.403206
> 1.435221
> 1.394569
> 2.043707
> 1.509543
> 1.853792
>
>
> In old system, 24 USRPs use UHD 3.10. The time intervals in one=20
> example is (unit: ms):
> 0.385173
> 0.296745
> 0.284212
> 0.273682
> 0.278543
> 0.274327
> 0.279519
> 0.274441
> 0.276693
> 0.296875
> 0.275212
> 0.307623
> 0.309554
> 0.28233
> 0.28234
> 0.275119
> 0.283057
> 0.277138
> 0.279357
> 0.276074
> 0.277696
> 0.276335
> 0.280675
>
>
>
> Though there is some variance in intervals in both systems, the=20
> difference between old and new systems are significant and reliable.
> Could you please pass my case to the R&D team to confirm?
>
> Thanks,
> Hongwei
>
>
> On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 2022-10-11 12:15, zhou via USRP-users wrote:
> Hi,
>
> Some of our USRPs are using UHD 3.10 because they are in old systems.=20
> and I am also using UHD 4.1.0 in some other USRPs in new system. The=20
> USRP products are all NI USRP 2944 (X310).
> In my applications, I need to use PPS signal to synchronize multiple=20
> USRPs. After applying PPS signals, I read back the time in USRPs one=20
> by one. Because of network delay, there is some difference between the=20
> readings. However, the difference is much bigger in UHD 4.1.0.
>
> The interval between two USRPs using UHD 3.10 is about 0.2ms while it=20
> is about 1.4ms in UHD 4.1.0
>
> Does this mean that UHD 4.1.0 is slower than UHD 3.10?
>
> Thanks for any suggestion,
>
> =C2=A0Hongwei
>
Have you tried UHD 4.2 or UHD 4.3?

I'll point out that the performance-critical aspect is the streaming=20
performance.=C2=A0=C2=A0=C2=A0=C2=A0 The latency on get_time_now() should=
n't matter
 =C2=A0 that much, unless you're trying to use it for synchronization, an=
d=20
you really should be doing that.=C2=A0 That's what set_time_next_pps()
 =C2=A0 and friends are for.


--------------rfYQPOaWTGZF5U80bgpTwrLZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-11 16:23, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:776005769.270285.1665519818410@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpef891c61yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks Marcus. Yes, I use =
the
          get_time_now function to read time inside USRPs.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I also think the newer UHD
          versions should be better, but the measurements tell
          differently. The queries to USRPs are sequential.</div>
        <div dir=3D"ltr" data-setdir=3D"false">There are 16 USRPs using U=
HD
          4.1.0. I query them sequentially and the time intervals one
          example is as follows (unit: ms):</div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <table style=3D"border-collapse: collapse;width:48pt"
              width=3D"64" cellspacing=3D"0" cellpadding=3D"0" border=3D"=
0">
              <colgroup><col style=3D"width:48pt" width=3D"64"> </colgrou=
p><tbody>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"width: 48pt; min-height: 15pt;" width=3D"6=
4"
                    height=3D"20" align=3D"right">1.683691</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.606288</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.629145</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.790804</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.685894</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.736507</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.471674</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.424962</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.460004</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.403206</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.435221</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.394569</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">2.043707</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.509543</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">1.853792</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">In old system, 24 USRPs us=
e
          UHD 3.10. The time intervals in one example is (unit: ms):</div=
>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <table style=3D"border-collapse: collapse;width:48pt"
              width=3D"64" cellspacing=3D"0" cellpadding=3D"0" border=3D"=
0">
              <colgroup><col style=3D"width:48pt" width=3D"64"> </colgrou=
p><tbody>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"width: 48pt; min-height: 15pt;" width=3D"6=
4"
                    height=3D"20" align=3D"right">0.385173</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.296745</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.284212</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.273682</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.278543</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.274327</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.279519</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.274441</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.276693</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.296875</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.275212</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.307623</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.309554</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.28233</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.28234</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.275119</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.283057</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.277138</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.279357</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.276074</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.277696</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.276335</td>
                </tr>
                <tr style=3D"min-height: 15pt;" height=3D"20">
                  <td style=3D"min-height: 15pt;" height=3D"20"
                    align=3D"right">0.280675</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Though there is some varia=
nce
          in intervals in both systems, the difference between old and
          new systems are significant and reliable.</div>
        <div dir=3D"ltr" data-setdir=3D"false">Could you please pass my c=
ase
          to the R&amp;D team to confirm?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <div dir=3D"ltr" data-setdir=3D"false">=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp2ff4a00eyahoo_quoted_6295737119"
        class=3D"ydp2ff4a00eyahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp2ff4a00eyiv9416287177">
              <div id=3D"ydp2ff4a00eyiv9416287177yqt68152"
                class=3D"ydp2ff4a00eyiv9416287177yqt5082330473">
                <div>
                  <div class=3D"ydp2ff4a00eyiv9416287177moz-cite-prefix">=
On
                    2022-10-11 12:15, zhou via USRP-users wrote:<br
                      clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica,
                    Arial, sans-serif;font-size:13px;"
                    class=3D"ydp2ff4a00eyiv9416287177ydpf0592c6fyahoo-sty=
le-wrap">
                    <div dir=3D"ltr">Hi,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Some of our USRPs are using UHD 3.10
                      because they are in old systems. and I am also
                      using UHD 4.1.0 in some other USRPs in new system.
                      The USRP products are all NI USRP 2944 (X310).</div=
>
                    <div dir=3D"ltr">In my applications, I need to use PP=
S
                      signal to synchronize multiple USRPs. After
                      applying PPS signals, I read back the time in
                      USRPs one by one. Because of network delay, there
                      is some difference between the readings. However,
                      the difference is much bigger in UHD 4.1.0.=C2=A0</=
div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">The interval between two USRPs using
                      UHD 3.10 is about 0.2ms while it is about 1.4ms in
                      UHD 4.1.0</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Does this mean that UHD 4.1.0 is
                      slower than UHD 3.10?</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks for any suggestion,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">=C2=A0Hongwei<br clear=3D"none">
                    </div>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Have you tried UHD 4.2 or UHD 4.3?<br>
    <br>
    I'll point out that the performance-critical aspect is the streaming
    performance.=C2=A0=C2=A0=C2=A0=C2=A0 The latency on get_time_now() sh=
ouldn't matter<br>
    =C2=A0 that much, unless you're trying to use it for synchronization,=
 and
    you really should be doing that.=C2=A0 That's what set_time_next_pps(=
)<br>
    =C2=A0 and friends are for.<br>
    <br>
    <br>
  </body>
</html>

--------------rfYQPOaWTGZF5U80bgpTwrLZ--

--===============6493788836073195892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6493788836073195892==--
