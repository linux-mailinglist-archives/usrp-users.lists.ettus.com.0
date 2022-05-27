Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BF7536035
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 13:49:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E39513847CC
	for <lists+usrp-users@lfdr.de>; Fri, 27 May 2022 07:49:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653652147; bh=pVJRzHPjNsQL3Pb7Mhdby5CIQUif6YooHGUhzOZ18no=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=z/YG6uThRvjTNyFZ6E4BOIWGdKWrLST7wP5VLFfx4uCnWSy1U0feSEtbhOymePpuT
	 0zu2RZspE4fJ8OMPbs2+NC/y6DRNEinrD6NyqUo5l6zxJYBOdDSSdnAlxEFDaqHvDA
	 +MNVe0ESlkZcb3/7kBJiwm8xQavATr9jCrCE/5uZu3N1YlwSZsY6l3k1GSFHXcokZT
	 G+5ummFoS/wwYicPgUDDoebBI/HezQ9TE/A7gFjtDQYe61aJ/ZHdheNwHgQoVEMfdZ
	 DkhRTpUZKSCVfBybE10Dnt+eEz3Wq0BNDUqOraWYZAO3AbY0xHE9MsLcY5405TdZVH
	 DhEjIeRfYzhhQ==
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by mm2.emwd.com (Postfix) with ESMTPS id A1AAA3847CB
	for <usrp-users@lists.ettus.com>; Fri, 27 May 2022 07:48:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nE4N/Muu";
	dkim-atps=neutral
Received: by mail-wm1-f52.google.com with SMTP id f23-20020a7bcc17000000b003972dda143eso4429550wmh.3
        for <usrp-users@lists.ettus.com>; Fri, 27 May 2022 04:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=DjR6yfrTN9DExIABjwouqkiVe38MIeXa/O0fOG5vufU=;
        b=nE4N/Muu7OcqM/RMXQmLTFkhVxEkbzplgrcjwfEeWb1AYYBWzc1+723R1GX6E0BDgg
         ZEu6xtvv6LvT7tenD0TzpUfj2c8za7HwuAfSU4KQDkwf1yZ6c4J8UfZ5z/SEO1BxyNzw
         7NRNoiyxqfz810BTVJ9R9bTOZpVlydBTyT/bMn+W9OfH3iYpPOPBDSTgiyOcsk2G869Y
         7AzATU5eSo/hwdcEqM4WrdVguQN9DXdq5pqdHTotSnh1KYZeMjQWx8BMGmvSTd8ksvZf
         t/FE0zjrGx6IGtxDIA0jAPqI66qAwi+Iub5+ZjjR8eo6wPfKNQcbCB5ahGJeKdyGgqor
         PSow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DjR6yfrTN9DExIABjwouqkiVe38MIeXa/O0fOG5vufU=;
        b=229IPs16MatLP8nnZlDxa0puzNc9FrrqtegrbE5hveRUD9YPnm8Mciwf3Y0OadA0lU
         25Ifs6CdnAi5XGrYCE8TNKm2SeNRnVlk7FgDSXGWAywFptRP/8zEhNLMdD3QWw5O9U0i
         tybhMclTFsrejt26a5gda94ub6P6TT4F5JOvF3pNpWotOf1Z5yx0F2IjGRWGNjg9GNzv
         oRa3CLUetsfqVnRm2CwmFMs1OeMO8WAo151mcOXpg+y9S6I5n60Ph6OGq/D/Lm5RCfas
         BjGQ6bVYTIihaht17r+tZirkWBlsqjflpQebh9kLWs2eJkvnrqeu82ubmoZXX0k/CRG4
         M24A==
X-Gm-Message-State: AOAM531wrlHZ9NtqtehxPiOOwmzwROsB0TQ7yqCpFl/pqym3G/G79Zrx
	DlyHt2GGDFWNgKBabYpa02V7ca+bdVlXYYD5L4lF97sQ9Cc=
X-Google-Smtp-Source: ABdhPJzB5x3lZbdQmyqaV7s+ItBAJmcHAW4vqrOzBPOPhjYu125EqlhhFN9CS3BO4UqVfj0p4FflBHozgfSW1QPWR6A=
X-Received: by 2002:a05:600c:2e04:b0:397:7421:7764 with SMTP id
 o4-20020a05600c2e0400b0039774217764mr6829913wmf.145.1653652080357; Fri, 27
 May 2022 04:48:00 -0700 (PDT)
MIME-Version: 1.0
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Fri, 27 May 2022 13:47:49 +0200
Message-ID: <CAFPzw1mTwQ9yfkH8tJDTYjPmDfLUjWtTZz7OYZ8TJtxgaJBcLg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: YQRZU2JBRX3EUZMHIZ5KAEAXYVH5YBR3
X-Message-ID-Hash: YQRZU2JBRX3EUZMHIZ5KAEAXYVH5YBR3
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Underflows with 200Msps TX and UBX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YQRZU2JBRX3EUZMHIZ5KAEAXYVH5YBR3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8272073493746010651=="

--===============8272073493746010651==
Content-Type: multipart/alternative; boundary="000000000000d4f32f05dffce0e3"

--000000000000d4f32f05dffce0e3
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to transmit a 200Msps signal with an X310 and a UBX-160 using
the example code 'tx_samples_from_file.cpp'. The file contains complex
samples of type double. But I get Underflows constantly.
The host is an HP Z4 running Ubuntu 2020 and UHD 4.0. What could be the
problem? What characteristics should my host have to avoid underflows?

Thanks in advance,
Greetings
Anabel

--000000000000d4f32f05dffce0e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I am trying to transmit a 200Msps signal wit=
h an X310 and a UBX-160 using the example code &#39;tx_samples_from_file.cp=
p&#39;. The file contains complex samples of type double. But I get Underfl=
ows constantly.<br>The host is an HP Z4 running Ubuntu 2020 and UHD 4.0. Wh=
at could be the problem? What characteristics should my host have to avoid =
underflows?<br><br>Thanks in advance,<br>Greetings<br>Anabel<br></div>

--000000000000d4f32f05dffce0e3--

--===============8272073493746010651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8272073493746010651==--
