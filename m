Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DA260953C
	for <lists+usrp-users@lfdr.de>; Sun, 23 Oct 2022 19:48:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F8B9383BB4
	for <lists+usrp-users@lfdr.de>; Sun, 23 Oct 2022 13:48:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666547315; bh=PNXDS5zEZ2Bn+W4rBYEHaIndISQSoYhyrpCcVc4h7HI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PRx3F1J+tmvEatiD/XIABR1naCJIzj+HXrVL2HCvqdtUP4RpFlrBOC4ZvOGB38u+J
	 dHedOeJLWKV9JPV4yP/LnIX8XcvV54asEhCM3TeF0FWRir3vRFiQwKvInmCo87oVg7
	 cQA9wspXVMicHjAEx5dhj8QQrJbsSNn+JPbmTkjqILLiWbaAFASaEVTsYNEn2KgnNh
	 Xfi/1aNOfChGNEzYx6pKQJtR86Yxcog6BMzBdwk71XFUQd8mzlBJC7nILqP20S5cEk
	 igQ3jy1lftzSMnSANL8JLNfzh30fzxmh3n8pfeBvSOJj8ZFm1tDYdQGxBXX2eyaIHJ
	 hIvHNss4Nzt6A==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 5AD7F381467
	for <usrp-users@lists.ettus.com>; Sun, 23 Oct 2022 13:47:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BRyB2H20";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id t18so8065658edt.2
        for <usrp-users@lists.ettus.com>; Sun, 23 Oct 2022 10:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KvLqEWj13zlp9bmWRHa1tvk8jsU0AExtVLfuSPt15uU=;
        b=BRyB2H20Hw2FejLTn/82HmLf4fs0/6NX/hOZzhTtU4fkX34NTKmQZfFRzkAjL3uQrz
         QGhnqys1H7y1N9Vs8y1RchXvkepCvqz9w1QlaoV96di5HmGLbjfaflmrlcpBnu8IlULM
         9g3KxFIK5ImlFzv4f6ha1lJExcY39MO32naP2PF8BTftyGoDD2drY7ogDwVkKSfDmIpL
         yqUSYNYKZg24mHITjNchk0fuL1YzIE9dialANNNGzIk2m6Ul1wPk/w7s4Nxre9QYZmAn
         cD0BmaPFyDdulczJ3CvE4blFV8TI4t/CnyQLNN5mB79IMuWT4ekRCE+bQCAYrdwGrFSP
         UGdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KvLqEWj13zlp9bmWRHa1tvk8jsU0AExtVLfuSPt15uU=;
        b=rGNBQZJWTojVLbfZ4z6p5cTNRWBrtMb2cYCVErCXjamzDhV2klZfPwlKK+GfFdhNs5
         0bxaNr8M7bYQDGW8xbh29r3D4VMQuni2VLD6ATpQ+CKitAN4Xoy/Mm6QP42DxxVmiMkj
         dJ7vyh5YgPi7YPpM+nzXFBA6te/RlP9W23cpy3UQ38LQtXWefuchRuMTPyfNl75bLMOw
         sAf4NZSUgOnlzp3f+zDavwyy4pXDu3chbVc/dMoat/9WbcqvwKtM1706RhW9w2lm38+G
         0Up864XLcViANPrRKxVRf3VL3szoFND4ccADt+tfmyWo66VM4woL12tQhBj5Y6/zycjK
         pufw==
X-Gm-Message-State: ACrzQf0mFMO49QOS1VE4oFmpicadtZ16rKXAmW0Kk1fvIgkN47t+KZQP
	viPIZ/FE2WxmSBrz5d8SRcrxshaBkZ3H2u6nH+gmudaHnwc=
X-Google-Smtp-Source: AMsMyM7QpW1uFcRCZvzNyiiNjoSyVIlT0aOkjduhoc8FUGsJ1JfTt9Z0zj2yaJCIGojUdPmJv00zhDtWhZ4fN+88eW0=
X-Received: by 2002:a17:907:a059:b0:78d:1a16:fc5c with SMTP id
 gz25-20020a170907a05900b0078d1a16fc5cmr24177128ejc.31.1666547250278; Sun, 23
 Oct 2022 10:47:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAKNV16WYZgzRi_5AtTCpQ5fq=+f5UoM0LMhfBBwg-ZdT03tnGA@mail.gmail.com>
 <375f87d6-a523-7410-88ec-7bff37c7cb5c@gmail.com>
In-Reply-To: <375f87d6-a523-7410-88ec-7bff37c7cb5c@gmail.com>
From: EmPa Kro <m10502215@gmail.com>
Date: Mon, 24 Oct 2022 01:47:22 +0800
Message-ID: <CAKNV16VkR3v3kNhE_YQqW_Yjoh4ed-we41FSNPa=ESAKsJLCrg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: U7ZZLDOEYMFRWH3EFNYDA5V6STPFQJVU
X-Message-ID-Hash: U7ZZLDOEYMFRWH3EFNYDA5V6STPFQJVU
X-MailFrom: m10502215@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to use command replace hardware-reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U7ZZLDOEYMFRWH3EFNYDA5V6STPFQJVU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5252858247409380734=="

--===============5252858247409380734==
Content-Type: multipart/alternative; boundary="000000000000dab57505ebb744e8"

--000000000000dab57505ebb744e8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

I use the devices in 5g.
If the protocol handling too slow, then it will let N310 meet hardware real
time.
[Ex: Protocol must complete scheduling and encoding/decoding... in one
slot.]

Best Regards,
Kenny

Marcus D. Leech <patchvonbraun@gmail.com> =E6=96=BC 2022=E5=B9=B410=E6=9C=
=8824=E6=97=A5 =E9=80=B1=E4=B8=80 =E5=87=8C=E6=99=A81:04=E5=AF=AB=E9=81=93=
=EF=BC=9A

> On 2022-10-23 12:58, EmPa Kro wrote:
> > Dear USRP develop,
> >
> > Because I meet some of hardware real time issue.
> > I must use my finger off/on power button.
> > Are there any other ways to reboot?
> >
> > I have used software command to reboot, but it can't fix HRT issue.
> > "ssh root@[N310_IP] \reboot"
> >
> > Best regards,
> > Kenny
> >
> Can you expand on what you mean by "HRT issue"?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000dab57505ebb744e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Marcus,<div><br></div><div>I use the devices in 5g.</=
div><div>If the protocol handling too slow, then it will let N310 meet hard=
ware real time.</div><div>[Ex: Protocol must complete scheduling and encodi=
ng/decoding... in one slot.]</div><div><br></div><div>Best Regards,</div><d=
iv>Kenny</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om">patchvonbraun@gmail.com</a>&gt; =E6=96=BC 2022=E5=B9=B410=E6=9C=8824=E6=
=97=A5 =E9=80=B1=E4=B8=80 =E5=87=8C=E6=99=A81:04=E5=AF=AB=E9=81=93=EF=BC=9A=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-10-23 1=
2:58, EmPa Kro wrote:<br>
&gt; Dear USRP develop,<br>
&gt;<br>
&gt; Because I meet some of hardware real time issue.<br>
&gt; I must use my finger off/on power button.<br>
&gt; Are there any other ways to reboot?<br>
&gt;<br>
&gt; I have used software command to reboot, but it can&#39;t fix HRT issue=
.<br>
&gt; &quot;ssh root@[N310_IP] \reboot&quot;<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Kenny<br>
&gt;<br>
Can you expand on what you mean by &quot;HRT issue&quot;?<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000dab57505ebb744e8--

--===============5252858247409380734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5252858247409380734==--
