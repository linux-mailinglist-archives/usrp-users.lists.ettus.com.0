Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D58D6F492A
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 19:34:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34C7938472E
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 13:34:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683048846; bh=uBnmOHyKkS7/rZ+4F7UPdGyTXYR7F07KcPGIBrYjLd0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CQwQ+Gs1czR/T1KKeBsmEhYWssdNHELwfCd74ME91G1AkIAs8ydfhmsRl8Lp82o7t
	 nVxx5wRzNRZdNqKhVY6dRAhO2Uo02aUzO7zLwTTcuLO6hpM1VxFr46OnSvUpRYA/jw
	 pVeelsYB7gLOksOv9jqT/M1S5qAj1gaFkohlTQ8INtCyEqZFkfJfyjFy+FWXEsuiqc
	 NWgNzWiQphpHetTfO7idqfC7gGYHCSp9CyMqtPnVGw51ts7OElSRYkWBi1ApcBOVkb
	 3GvbUo4ut1hAyqKMLE9rxB8kVqJ3yedWI8R4bw1fewC2XdL6PDzb9u2MtxYsF6quvv
	 wavtkmxNUPAAw==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id A12C0384660
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 13:33:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lwh4gsxA";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-50bc040c7b8so5183248a12.2
        for <usrp-users@lists.ettus.com>; Tue, 02 May 2023 10:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683048824; x=1685640824;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8MbmIQvKfXJnoXNTVSQzmsjgdUNuQTRejCq6oKA+zak=;
        b=Lwh4gsxAEGtj9M9CmyrYShYaWWh9u6RfddcUaURaeQ3phuwYBJvJHBW8pxvxc9pssE
         Iam6pEEAko1b4ylFeC0LWyXgwlO+2TIW0v7TJ5YGNm7dCvRmBv2zBNnsCHasv9Qyq2qY
         LVGcK2tn5jgkwq6jb563Ea967p+WasxEIn73QXeRAQ4/17Zp19ERHHpgwx1at8axLvKn
         +EY5lcHAmBpMYkdG99vSIFivyixdNqg+kD4NkSCp/Z4W1XcK/9fxN9ij2J74Es4Idgsv
         mx/usdr0vAXeO29CW4dOiXJQEbWcLkDnqj2o/fnlffawo3ynVTEZ0knZTegIWDAIGjSE
         ibtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683048824; x=1685640824;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8MbmIQvKfXJnoXNTVSQzmsjgdUNuQTRejCq6oKA+zak=;
        b=RnDEd5IPuOWLpcdvbSZ2DjPZBvbAdKfyk9fz9Fhdcq4hoDwkIUKoNfbwbE0CsSzJXZ
         gKz2w5z8X1HGvuuArbr/YZVc6m5mFbhP8lJ7HKyDo2vMRckz/tSfNhHLYBXGLqqsFGDU
         b3xm4J94tcyT2b9QOPztDW8VpH//ZZE/udTjIiiH3kmDarKqwVzvKJFnwAoNcmYbRtec
         m8QvApHg/kVGxBrtAomPtBB4/pNk7h6NrUeN/AXef7ostz36mLq5noHMW+sZGCUGrqgo
         gRnEdYMsRXtvEQvabId48tcj9FHHHdujQlnJBRJZeJu5XoJL4mBmrWCjz4Sd27pzFvd9
         xN6A==
X-Gm-Message-State: AC+VfDxJlizq2QXse5zh4hcTYRADDA3noXFMNzBwVbRqTd1b5QciBta0
	AuLK5X29yTBCMPfJCKy3HRhT6JbOvWaRa4LXrs5cOUh5
X-Google-Smtp-Source: ACHHUZ6KXRkqhWSj5HOCsitiet4UwVS6VSNpq3ZGjtTQk8JK9TbnJhfM8JeJUF/Fh1eXg+RiDmJBmiGYfQk0yc2Z4Og=
X-Received: by 2002:a17:907:3d8d:b0:94e:eab3:9e86 with SMTP id
 he13-20020a1709073d8d00b0094eeab39e86mr748254ejc.33.1683048824034; Tue, 02
 May 2023 10:33:44 -0700 (PDT)
MIME-Version: 1.0
References: <eH5GoPzVostEnNVdl5JGsxyKifaVpTjAPQZqWrwo@lists.ettus.com>
In-Reply-To: <eH5GoPzVostEnNVdl5JGsxyKifaVpTjAPQZqWrwo@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 2 May 2023 13:33:33 -0400
Message-ID: <CAEXYVK7J6ocAHaXm=Kz9pLtY74rZddATda45C3gx0BXM1DP=Jg@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: ZKCAMR2T5THUIGMEMA2HUC24CKGMWCIL
X-Message-ID-Hash: ZKCAMR2T5THUIGMEMA2HUC24CKGMWCIL
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tail of every transmit trimmed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZKCAMR2T5THUIGMEMA2HUC24CKGMWCIL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3293169243356569639=="

--===============3293169243356569639==
Content-Type: multipart/alternative; boundary="0000000000004bd8ee05fab95749"

--0000000000004bd8ee05fab95749
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 2, 2023 at 1:30=E2=80=AFPM <ri28856@mit.edu> wrote:

> Are you using any interpolation or is it going directly to the TX DAC?
>
> I=E2=80=99m using a base UHD FPGA image at the moment. I tune the frequen=
cy
> directly using the analog LO. The DSP component of the tune request is se=
t
> to 0. Is there some other setting that may have triggered the DUC?
>
What is the sample rate of your transmitted samples?  If it isn't 200 Msps
for the X310, then you are using the DUC.

Brian

--0000000000004bd8ee05fab95749
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 2, 2023 at 1:30=E2=80=AFPM &l=
t;<a href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>&gt; wrote:<br></di=
v><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><blockquote><p>Are you using any interpolation or is it going directly =
to the TX DAC?</p></blockquote><p>I=E2=80=99m using a base UHD FPGA image a=
t the moment. I tune the frequency directly using the analog LO. The DSP co=
mponent of the tune request is set to 0. Is there some other setting that m=
ay have triggered the DUC?</p></blockquote><div>What is the sample rate of =
your transmitted samples?=C2=A0 If it isn&#39;t 200 Msps for the=C2=A0X310,=
 then you are using the DUC.</div><div><br></div><div>Brian</div></div></di=
v>

--0000000000004bd8ee05fab95749--

--===============3293169243356569639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3293169243356569639==--
