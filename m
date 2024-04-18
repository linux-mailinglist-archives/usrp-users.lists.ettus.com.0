Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 767F28A9F09
	for <lists+usrp-users@lfdr.de>; Thu, 18 Apr 2024 17:50:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80C753863D5
	for <lists+usrp-users@lfdr.de>; Thu, 18 Apr 2024 11:50:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713455427; bh=LjmuffVxZr9av7Xge4vtIMWT8RkDTrrDOlP3jHgT8hs=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=IpI4Alc+tzqgPrrH9Al5eY8D0WzFXu8VQ+Oa5hwZSpbiQwKBts1xUql5d+2xACouG
	 zZRtGRWxjbXXooDws8La86AHKcSO0XABBhr0qUV31Yzfxf7KrQnSUNkeGjMcWFDDwG
	 JYmrsj1ISIpxpjcaaJlrUGvAKLnZJ8XBx5i+7kHRxqae3EyaPt7TFtDVwwV5rTSQ12
	 UO08zF5jWVeoY83RNlbifrwcF2HGf4LpfjumYt4sPuwOgZraeUNURdv82Xbnsyf+4R
	 SwhVV/SKdgv0pDG+WKx43Cl0h+xv72uDdZXXF9qbwVxwwxk1kMWvlsQ1/ES5UQn7s7
	 zUYQUUd65JhAw==
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BB02384FDD
	for <usrp-users@lists.ettus.com>; Thu, 18 Apr 2024 11:50:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="IvEI3OPO";
	dkim-atps=neutral
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6ecf406551aso920805b3a.2
        for <usrp-users@lists.ettus.com>; Thu, 18 Apr 2024 08:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1713455420; x=1714060220; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aVt6zxdrPOsCkzDbzjnOJPZ/uTsSdbUskIRnipjyyYw=;
        b=IvEI3OPO9V6yyvKSqsU++zVIrohYFUuDAZWWLKqJ4NTMI0EhQtgX25u7ELqASIFlW0
         kVn+v8NjKoKds6XWXxynGq5eTNDqPqgqI8qhp/9h6HfNmSXSACubxKnPsE648Y5ic520
         xVReNu9nAkfGzZBaIQUE/t1IZ3G4I9KUwKefcS0yJl9vynQ9hH08dlWHt3nnCXNg4mHF
         Op/M1dCBam0Nvap0+hvtsd4nnw0wwte7SOM9mFoG0O7uul7GS8Lw+/n4tTB1uR+VYYFD
         ejFDbT6+mrFfgt5N5oE0gTEkZY7AydgZMvLNTL4Z5CZ8E2YzHJNC9mZ1n2t8As4UMvnE
         yamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713455420; x=1714060220;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aVt6zxdrPOsCkzDbzjnOJPZ/uTsSdbUskIRnipjyyYw=;
        b=nFTalw4IQYN9pDAi3B/FN+i6t5ZfW2aUxtFq6gOXdJfHGqsXAugL8ZeiWvzMpY0Ygf
         09I41Wq8a7wa9/U9vKQWe/d8bHwfrozQtXdzbm+cKNByMnyjMaY+VaE2vNbkP3zPKf/M
         tpLu5SDeveoOj1F+eI6EvpwHjhd5HzpuMk3O8CKEavV8cVBEgOu1LNk2c2uKm1wRm9/C
         Z2+1eBZVwCH/74QoWYRn9wi0fiMLn6iz1+5+GoVlsTJcUvWT1BVPRPjYbS1knRIzs84n
         BnYxVouuXFwk7U/kXjL9OcS5DYz9e76+oZAbSyv73WDBqrdBoqJxInrCavuUTop7SyMI
         AxsQ==
X-Gm-Message-State: AOJu0YyU3LmojE6wIFCToLQOYVurCyj7bilMu59vT1H4x74oazQfM33H
	Agqc/0fKZhTHiGQBoyMyKBrAK2fkiHyJf7Uthmb1p5MtLY+RamoND1SYANVpLS7xNJooHhOhU+w
	CI6CxO/ncFMeLoLExdN2RfufkbIUXVLIXYtyA
X-Google-Smtp-Source: AGHT+IEbTJ0h+xRBgs/1FD3rmEp88gX+d9lYOE5DY/ElJGf5qROQfKCTEcFnBrefL0Vvxmxfn3HnuzpXcEG3ZfHNg5k=
X-Received: by 2002:a05:6a21:99b:b0:1a3:3c5f:2ebd with SMTP id
 li27-20020a056a21099b00b001a33c5f2ebdmr3293706pzb.59.1713455419949; Thu, 18
 Apr 2024 08:50:19 -0700 (PDT)
MIME-Version: 1.0
References: <94eb78b8-6ea4-4e04-86d1-918b3b5c1d65@gmail.com>
 <39cd3dd5-d55f-4fe8-88a1-0e5de4a7c082@localhost> <1697372280.342024.1713419690912@mail.yahoo.com>
 <PH0PR04MB83115908F44B4BB9C7FB8713F30E2@PH0PR04MB8311.namprd04.prod.outlook.com>
 <912423d2-5f78-4622-ba96-44197cbc7d18@gmail.com>
In-Reply-To: <912423d2-5f78-4622-ba96-44197cbc7d18@gmail.com>
Date: Thu, 18 Apr 2024 11:50:07 -0400
Message-ID: <CAB__hTSUi-hEVd4BuZ6ujtF8mLkzgudj04U7w9O8==o4hyfHhA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: A3QMCPVAX6V6PA275HNXT7C3BQN5TE75
X-Message-ID-Hash: A3QMCPVAX6V6PA275HNXT7C3BQN5TE75
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unbalanced power among antennas in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A3QMCPVAX6V6PA275HNXT7C3BQN5TE75/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8424842467859327288=="

--===============8424842467859327288==
Content-Type: multipart/alternative; boundary="000000000000a54c4c061660edbe"

--000000000000a54c4c061660edbe
Content-Type: text/plain; charset="UTF-8"

The plot is titled "Real". If this is simply the real component of a
complex signal, then it is not possible to know the magnitude. If there is
a phase shift, then the power may have shifted into the "Imag" component.
Instead, plot the abs if you are interested in only power differences among
channels.

--000000000000a54c4c061660edbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The plot is titled &quot;Real&quot;. If this is simply the=
 real component of a complex signal, then it is not possible to know the ma=
gnitude. If there is a phase shift, then the power may have shifted into th=
e &quot;Imag&quot; component.=C2=A0 Instead, plot the abs if you are intere=
sted in only power differences among channels.<br></div>

--000000000000a54c4c061660edbe--

--===============8424842467859327288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8424842467859327288==--
