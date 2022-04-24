Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F164950D54F
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 23:39:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 405A7384EF1
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 17:39:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650836370; bh=fyqfzz9cgAY/oHrGK57RvHLTr5A05XXc14m/jFvlpNQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=UEmg1FXlgvegXDl5BJPWmYy7zX4s9ZEXH17OEwUYoUNQ8iRAYjamWrjCqn3fZlwpr
	 SQuJ5EEUp8a+05btZDxzUVQ075qfAdH3g9Cwf/nOD0F6NZca7txqi06GqfRWIdBbsf
	 uN3dr7HW/6Zl+4VuB3dxMdobTkUcxKDL6OPA3Y93bSP0bFZe1vtNyyeQrdGERRZXC6
	 j8WB4RSAfPq0YftxVPwldD9Gm2JmhcJZHxVuKkrsiGpPhgPlrLVNuGO0tUvatU84Xm
	 RBmf0Kj1MSIOeAIIkWJ713xRrqAwc63gyFprplxbofSqN7jdCiYt0uWUEueVHApQ22
	 H1xrPDp8F+XNw==
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B767384E8B
	for <USRP-users@lists.ettus.com>; Sun, 24 Apr 2022 17:38:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SX7xS8mI";
	dkim-atps=neutral
Received: by mail-wr1-f46.google.com with SMTP id w4so18275469wrg.12
        for <USRP-users@lists.ettus.com>; Sun, 24 Apr 2022 14:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AabA+kBhVSwy8/TOSqHSVi8IFlpdfpnTrl4qYx4IxgE=;
        b=SX7xS8mIq+LFZvXH/pPzIikq1VLtsUTbeMnpgQiZto2r5Qizmo2EKTW6NmTw0IoRBo
         rJYHV6cXpP/w/1Wz0yrIcwp0MC4TQmhyG8IX9fe2fvXbzb0PgyM6MdWTxRJB240MlwSs
         l/Ov2QpV+LswFgW7Svr8vAQfqWNbIazJjEYhBo7NTtjUNRBUKo+hC/ppkRc0xnJ2wBm1
         EpP/qJ7PyEkHy9ckt7mPgk/QApgkWl+ykXagWYAyYcTohxzck9Zv9HYlJ8wWV8J4jGJH
         gtW07xhoT4pX9E51wRichjPly/+Sz6hvT7VzP+/PkxXTYqzkxLXbJ7yVozhxaGYze4v1
         112A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AabA+kBhVSwy8/TOSqHSVi8IFlpdfpnTrl4qYx4IxgE=;
        b=M9MSPv29H93NjPPjaIfalVa1Rc1s68PwX3Rp/fx5w9J5NvV7DvS2XslKMAKvhopGzK
         SfemCKoM3d6g+9kFDhRKQ55aAoHElmZWef+6yjqzGx0etz/mZ+oGWLHaiCSS1ewRVw5g
         FMfFwWdnUCs1tmxhyiqlM4FniyuMx7N7wNWTJD9MnzATTSd2K1bMkJ3kBhVwdoGeOdRI
         ziH/feeEK7ITzbRqtJebbd7fk3hnR/3xy1uqL0E9lYH+ydiTzSIcIAjnrSF8ljxrkNrW
         o9/cZw/ds6Js702WLe04c1eXx3W3w7V5MGJspAJyYp1nSy+j4CJjc6oqysdKT9Qoj9yA
         g15w==
X-Gm-Message-State: AOAM531GKA7v4gPsjNrB7bm48fAjjU1Ryq/PwPTaFLonTnsHxx7xNgEt
	ikQ+mWgMKr0UUnOLo2rw9qN/1hETne8Qt/xYdZM=
X-Google-Smtp-Source: ABdhPJw1qVW08WO33Yg6ewn9eW+NESvLxqZmSFpkgk8ylIe9XMlXNiCuqkT2vg09Mb4yMNQs6NsjPUkdeyXiGLCCKAc=
X-Received: by 2002:a05:6000:2a6:b0:20a:7732:1fdc with SMTP id
 l6-20020a05600002a600b0020a77321fdcmr12294783wry.256.1650836310334; Sun, 24
 Apr 2022 14:38:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2HZnkFzUBtu+YY5aQ2Kr6NDNfvC0V0CSzx+4scL=iA7gg@mail.gmail.com>
 <2299DA86-434B-4FB9-8414-7311746868E0@gmail.com> <CAAxXO2HcY7sLCEqAvVWpp8V25EvFjTdbEZOf6oQRpNjaOnruug@mail.gmail.com>
 <20ac2caf-3fab-bd92-191f-3d4428c7e577@gmail.com>
In-Reply-To: <20ac2caf-3fab-bd92-191f-3d4428c7e577@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Mon, 25 Apr 2022 00:38:19 +0300
Message-ID: <CAAxXO2HKy-byyKPPpfhF60p+S4HDLUkUenpTCAzD_g91Y6wbUw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6BTCFKAUOG4DGGFEQI24I5NUWEBJD5BF
X-Message-ID-Hash: 6BTCFKAUOG4DGGFEQI24I5NUWEBJD5BF
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Invalid key
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6BTCFKAUOG4DGGFEQI24I5NUWEBJD5BF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thx:)

On Sun, Apr 24, 2022 at 11:44 PM Marcus D. Leech
<patchvonbraun@gmail.com> wrote:
>
> On 2022-04-24 16:42, Nikos Balkanas wrote:
> > Thx for your fast reply,
> >
> > I powered cycled, but I didn't upgrade my firmware and FPGA.
> > Forgotten how to. Haven't done it in a long time. A link?
> >
> > Nikos
> >
> >
> Lots of these types of topics are covered here:
>
> https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw
>
>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
