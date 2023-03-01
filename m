Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 332A96A73BB
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 19:47:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1011F38472B
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 13:47:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677696473; bh=oHX9HgXxIJcnZcun8fkspjPCgqHt2QtaszjU5UcG0zQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=s5nlv5AoK8QcDmZvbNp093tjf9PqTqBMKENpUzOwW3eqEpRaEqS94oc/nVbSLWn7d
	 qbmw2F579nz9fbSIy7ItisBuNmJMGG92QzM+oD/S+oOd3pXysRdlDW+4uPhaxT3gB+
	 ld/BL6ug5IvsXr9IS7vWLaZjlePHjHuPvo51lIBZ8FuANgXppDgAPi0WcrjtI7qUr2
	 6PTwgSqrQSTju9LZVJqfRtiaJqcGELcD/VLMah3fgvVRystglu1KFoyszK8T+O/BeD
	 mS5ee+zF/AZW9X7xemZ8UmBNj8RTK89g1v5HAHFsDBSdrvB4TrWNr8FOcsjJHjue5/
	 pwUAlWWftClag==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id DF0C73844C5
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 13:47:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="gAdR2aP8";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id i34so57825940eda.7
        for <usrp-users@lists.ettus.com>; Wed, 01 Mar 2023 10:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tl+OmScP1KRLudiC/0Do4SnEvZ90UGDvQnP9u1hX+ws=;
        b=gAdR2aP8ND50QPG56W3MsGdP9wbW4sMzZ9FqSYkeWca+PFZKVYHM9vxTqgRLMIwJy6
         +pi9vcLMmWDWGxNBuN9Ne4qroZ7o8dym26Vkk7+3Flm5wDL6JPiS16jBJNN2Mv/Od40L
         Dy/8jWUZjou6ncGeUFomtfLRz1+7I6l7TtlP09HsNNMXTFoy7QhVjdHPzyEiGS/2vd/6
         vF5PLBgoggfXpYoBd0eGogSkcQb8oImB5V1v0XszPb/Sa9c7Q1rllOSbfEAvvrXGAFR6
         Z4N/MSiyhOMdEEYot3gsoZtCw6Pvdseaxyd96s79QgIpMf5UcwZpgH1ZDrblfLl/xdoa
         bE2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tl+OmScP1KRLudiC/0Do4SnEvZ90UGDvQnP9u1hX+ws=;
        b=yXizXBX/YjF7KAGg/HsCJP/4LwBc9F5mOvCBWKpSIzeGtTE/N+wNSXjRymhxgsw83e
         lKmzmvgrw9p2pEud/7RJx98Dyn4msWHQIvoJ37UaHUGQdTS28ZNikW4Rf0b3DGA2/6uj
         +8WJx1u4L6KW5lbwnKok1z64//NDlgSrpxL4xaEMKw9Lx3zaWtap8i2Sf/EyKeSq9AHH
         XzPzgM4CTKoTMWosFQ2rvDKbMuG04q5ONHO3437wMlyimjJh2m2RkI5AwV0iWyQkVB+z
         uS29KJObQSiVVGWSSoy/nyuXd1OcIPwLn/RkAFbQiL46uFj8pGmRRd/ZKh7lKKEWGgj4
         8PLw==
X-Gm-Message-State: AO0yUKVyl/x1Fgao4Sb9bi5s4zXqeykT4mHCTeUV5gyJHK59adwYh32z
	/nUQl+sTC5eGipwxd2l+hVFAtxowv+sFl1ngpstEMA==
X-Google-Smtp-Source: AK7set8UBUOoeIuXAp7PfiE8sSg525B3zOIY7mGclZ/ksHndfw9e2bCeBOl84GYvUuHAxi+dhE3ghBuBLMRDhONkw0s=
X-Received: by 2002:a17:907:c004:b0:8af:2ad8:3453 with SMTP id
 ss4-20020a170907c00400b008af2ad83453mr11577455ejc.6.1677696438570; Wed, 01
 Mar 2023 10:47:18 -0800 (PST)
MIME-Version: 1.0
References: <g5fsIidNO02V9n8rYPvvPSoHz82jEKTXJOEh1iYA@lists.ettus.com>
In-Reply-To: <g5fsIidNO02V9n8rYPvvPSoHz82jEKTXJOEh1iYA@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 1 Mar 2023 13:46:57 -0500
Message-ID: <CAB__hTSQm5joSP0GBB-AX568Y3KjWRcGPR5ing+ZjZkAfO72MQ@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: FVN7IBRPGHUG3WO6ZOZUSIBNVVZFROHI
X-Message-ID-Hash: FVN7IBRPGHUG3WO6ZOZUSIBNVVZFROHI
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Instantaneous bandwidth on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FVN7IBRPGHUG3WO6ZOZUSIBNVVZFROHI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3956346670308375504=="

--===============3956346670308375504==
Content-Type: multipart/alternative; boundary="00000000000043a31805f5db248f"

--00000000000043a31805f5db248f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Joe,
Complex sampling does not require the sample rate to be 2x the highest
frequency as is the case for real sampling. It only needs to be 1x.  So,
the 250MS/s sampling rate produces 250MHz of spectrum. But, there are
anti-aliasing filters that reduce this to a usable bandwidth of 200Mhz.
Rob

On Wed, Mar 1, 2023 at 12:52=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
>
> I am currently looking to see what the highest possible sampling rate is
> for the ettus N321/N320. I see that the highest master clock rate is 250e=
6
> Mhz, However, on the product website(
> https://www.ettus.com/all-products/usrp-n321/), it says that it can
> collect up to an instantaneous bandwidth of 200 Mhz, so I am led to assum=
e
> that the maximum possible sampling rate is 400 Mhz. Is this true? If so,
> how do I configure my the ettus to collect at a rate of 400 Mhz without t=
he
> rate being coerced back down to 250 Mhz.
>
>
> Thanks,
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000043a31805f5db248f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Joe,<div>Complex sampling does not require the sample rate=
 to be 2x the highest frequency as is the case for real sampling. It only n=
eeds to be 1x.=C2=A0 So, the 250MS/s sampling rate produces 250MHz of spect=
rum. But, there are anti-aliasing filters that reduce this to a usable band=
width of 200Mhz.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 1, 2023 at 12:52=E2=80=AFPM=
 &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello,</p><=
p><br></p><p>I am currently looking to see what the highest possible sampli=
ng rate is for the ettus N321/N320. I see that the highest master clock rat=
e is 250e6 Mhz, However, on the product website(<a href=3D"https://www.ettu=
s.com/all-products/usrp-n321/" target=3D"_blank">https://www.ettus.com/all-=
products/usrp-n321/</a>), it says that it can collect up to an instantaneou=
s bandwidth of 200 Mhz, so I am led to assume that the maximum possible sam=
pling rate is 400 Mhz. Is this true? If so, how do I configure my the ettus=
 to collect at a rate of 400 Mhz without the rate being coerced back down t=
o 250 Mhz.</p><p><br></p><p>Thanks,</p><p>Joe </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000043a31805f5db248f--

--===============3956346670308375504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3956346670308375504==--
