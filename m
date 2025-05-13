Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E7CAB552B
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 14:47:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 352EC385F0A
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 08:47:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747140461; bh=7q90u7Mb/ICGluRUUkB2aThRNwfISq8Gy6IRkQ9wNkM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=P1pwoSjzs7OGHQ2I36AyaZci9ORxh6fUsqGb8XPbdvmCUqIGnsUHmT5Ntt4/6L8Du
	 +FE8iC0GRpbq4QoZvxR9vzydGS1MkuMvb1plMC4y4ts6l3/uM5gKQBEHLDjWnRqG5s
	 jwiZ2y5FAxPcUAwkxQWgsQd2QzDnHv3QeK+rUZxEIxEMX2ld9s6XB9OdrzSXi9my7S
	 VDIJospVNJP2ZoE0GiBQ1vXopHQKXg2EEy7Ed0wnwzphscJlfXAHYaw767QG6b6Uie
	 NnmKFXQolPfa3mhuDk9yVibA6es9ymWslY4pzJdefjiSxTW98Uzp2E0Vw59tTSED1n
	 XVluSnUdBHMDw==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id BE369385D96
	for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 08:47:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fceerTCr";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5fbf52aad74so11270114a12.1
        for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 05:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747140422; x=1747745222; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0hufH0+urGLPIjT9bCtIoUVCGfNsJms1yZ46VaOJrJQ=;
        b=fceerTCry7dtFEz+YsNFeSPSkiE84wE6wpy0U8GdZcb9vg/IDhc/6ZGoQCDio+wFqS
         9OQXWlJ4j1iwCwGNy/3nbVIVKSX+AueVfbWAXWlN6AReOqIGnIRbbzGKToK2xihORH32
         6kRMXVbhKyBNCk8rqRiNkNP/YPxbpfrHj5ukhRP1RKr0GyFKuyy11pytKFihEEwWyV9N
         90nc/l+4zIxsQdY18BdN3kKoWG1LIigVZK75ihcUMpD+42FO2WP0kzLMwxj82wDMWExi
         +32Fp2UOtZH2EHUJj+4HbdPxfzxI+bNK53EsCLWnDYgMnnKo1F3fcXSIJ8tnFyE4oP3B
         wl2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747140422; x=1747745222;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0hufH0+urGLPIjT9bCtIoUVCGfNsJms1yZ46VaOJrJQ=;
        b=H1YqnE9baVv/XE/J5KvE8YAsAOUKLGwwmUIRD1oXj0FBzGGOOdWV1RVBatLte+jRaV
         lCiyrg4LbbF2atmVMTAn4hmMbQHuc9nti+RtXqc3mXDoBIgsvFT59QBi5+645q46wpkF
         EZU2MJZauhtqkXGNRdVptBdPzrmZ3jFLCVx2Tkjx2gdP/bq2+YoznrIjS7FK6IUJo6x1
         7zbEYCTPfm+KS3wB3NiA54xzLiAZB1CK01Nc7ej2r65IFNvZI1LH+ht80M37GXnj0FXN
         lG7NV7JlfLicuXjfBN+jLjw2frX9z9j0lkxkfdPHOCOE8nMwqOBH8JDaxRQw+LXVxV1I
         yzUw==
X-Gm-Message-State: AOJu0Yxxc//9A9t8uxgNxwI6j355zGX6fcz0kpEtdcHzkCdggilldg/o
	L3taZndIU94eNHok9Kju47B/92BOgC5KWoPzrjbDgrmtn6jpmTgZO4x3xK2puCzCZe3yabj27Nq
	Oq7Q9J1WQUFcDApVaY1iM6o/xHos=
X-Gm-Gg: ASbGncvX7Tqsy7fEhwg7l8SAaSfuqVedAgzGrTA9uPcuZ1iC5UJhdQpMN8IfmaxAvWH
	s6LKDrYMslYkATKjVejY3AS/m0Er79k9DucfctCZS3LlafhaMjwC3CaQG1QDyKp49bOIl4Q0chg
	zmukirs98wbFnFUIdlFZFDs5moLrD8toNQ
X-Google-Smtp-Source: AGHT+IHF9AL8Cfr420XdgMjCW0WDYuzyDx11oBfPfssvaBiR7Us4zwmAt/3vvJ9TahLH1OpUu7nDNcthqOPEZsOL1Ac=
X-Received: by 2002:a17:907:9449:b0:ad2:52fb:e899 with SMTP id
 a640c23a62f3a-ad4d4df5bcfmr320295566b.12.1747140422085; Tue, 13 May 2025
 05:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Puk1XCw+=7i_27zSWD9t9HGg+-RFajRyySLM6pvqeLBpQ@mail.gmail.com>
In-Reply-To: <CAA=S3Puk1XCw+=7i_27zSWD9t9HGg+-RFajRyySLM6pvqeLBpQ@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 13 May 2025 08:46:50 -0400
X-Gm-Features: AX0GCFs6sdMMShyr4pLhXr2Xmpa6md8PP2nD5VjQBv9NxnZdMcBntCa6gP9sEIc
Message-ID: <CAEXYVK6saxCjJZ5dO_2e6LK=+xndh-YVCnfW0uqG3MW6hrBNxA@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: ZKPFMKFDDQZHNNOW66IXWMRECHGBPYVJ
X-Message-ID-Hash: ZKPFMKFDDQZHNNOW66IXWMRECHGBPYVJ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it possible to set sps radio core 1mhz or lower sps without using ddc (RFNOC block)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZKPFMKFDDQZHNNOW66IXWMRECHGBPYVJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8228083167580272048=="

--===============8228083167580272048==
Content-Type: multipart/alternative; boundary="0000000000003b324d063503d473"

--0000000000003b324d063503d473
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 13, 2025 at 4:34=E2=80=AFAM sp <stackprogramer@gmail.com> wrote=
:

> In RFNOC block i need set sps a muliplay of master clock but not need hig=
h
> sps. I need low sps but I want to not use any ddc block in my usrp fpga
> image? Is it possible ? Can anyone  guide me? Thanks in advance
>

No. The radio sample rates are fixed to the master clock rate.

Any type of sample rate conversion needs to be done digitally. This is
typically done with the DUC or DDC. You could write your own block to do it
if you wanted, but it needs to just do the same thing the DUC or DDC does.

Why can't you use the DDC in your design?

Brian

--0000000000003b324d063503d473
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 13, 2025 at 4:34=E2=80=AFAM s=
p &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com<=
/a>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_container"><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">In RFNOC bloc=
k i need set sps a muliplay of master clock but not need high sps. I need l=
ow sps but I want to not use any ddc block in my usrp fpga image? Is it pos=
sible ? Can anyone=C2=A0 guide me? Thanks in advance</div></blockquote><div=
><br></div><div>No. The radio sample rates are fixed to the master clock ra=
te.</div><div><br></div><div>Any type of sample rate conversion needs to be=
 done digitally. This is typically done with the DUC or DDC. You could writ=
e your own block to do it if you wanted, but it needs to just do the same t=
hing the DUC or DDC does.</div><div><br></div><div>Why can&#39;t you use th=
e DDC in your design?</div><div><br></div><div>Brian</div></div></div>

--0000000000003b324d063503d473--

--===============8228083167580272048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8228083167580272048==--
