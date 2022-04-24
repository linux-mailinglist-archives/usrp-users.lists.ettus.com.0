Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBE550D523
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 22:45:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2E16384E92
	for <lists+usrp-users@lfdr.de>; Sun, 24 Apr 2022 16:45:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650833127; bh=DPE0Un0NauEs9SxHroRL0RR+qjhR/9/I9HwwPtsmBXo=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lDzkSrIyg1MQuNhV5zcG6vJqiC9Ba8PCXOhM7biWb9NtwLg41vJxkE9tN1oaBymmo
	 6ZpdobiVeDLFeItJ60IiieoQny6QIfu4RqTqEngsku4559Ky4imoI6brbubwil6MeR
	 i7KjecN5AuBhuQ7HmeinZSBEMEYnw8lZrSWt0CIz2l6i98gAzoMS+2bHW7gU3ltznO
	 nGgj09tmwITb1LjYMG8vnIhamXOjqYxDcEvW9jtWcby9LoDnzkk8iCHT+369pUNL/g
	 0w0tT9Z9Or8EPsi/rN+dvAQ6dtlUb3onuWjKxk1QYGyJPknelRlksA4r+/KSkuBbNS
	 SpY6FuN7OEaUQ==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 6FF91384564
	for <USRP-users@lists.ettus.com>; Sun, 24 Apr 2022 16:44:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PZlbETDN";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id t11so2266034qto.11
        for <USRP-users@lists.ettus.com>; Sun, 24 Apr 2022 13:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=an9yYPHX648IPOfEdLXBktoUlimTyTN5TgiE3nnT+Sc=;
        b=PZlbETDNPawwtRQ+Tf0rsUGvbSM7gQrGilnNZqMOyK22kGjHuGKITLciuW3RdqJ4JO
         3N7QwCOlwZemZu6MR+2Dxzj0zpkYqqdUkVAHNnoDQRIcsLsUs6+azW9QYxiyWezXdyB5
         xY41/UoBdeH5HCu8zCPY//C0SCvIdyTe6mI0OE+n29GEtgKYLKD9KxUhqg5ZPOiLEmZw
         fClpNXfgOsAnrjkG0PRDmv3R45McdhQbgD4phEgHnIeU/61uPeKXZOZHf39GQSNLF0hV
         JYJKSUmkSA2tu/W1Ngg5l9wyj5Og2w1X5xz02VGTwIWEYd5wVzeSwPYLhs42Q+mnpFq4
         e03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=an9yYPHX648IPOfEdLXBktoUlimTyTN5TgiE3nnT+Sc=;
        b=GsMD2L/k5dLoDA6tKMvtCkNHdlqBT0T189fHYh6Og0LG0E5MNgOwQL2UUhLTkEWqAs
         LqKI4R9uoyMuoZ4OK0kAs37YcZgxP85353yf5o3kcuechCYkdmKbsXkXaxq4QxV8ZLZk
         3auBbXBl2HcxR7BPwsgHKpKU+rSeXE3aFnlQplqwOq8cg6dGX7Bhih7jYrhOfnF5+nTN
         rCTc9M1r22I8Z1mb7bjeeQu2WOvUSwS8/Ak1MbCYs3re+fehsmv4n+fFK3CKvafda3Nr
         OIF5rbhgpeBLwiMdvkceUg4nINldOTvtWytSiAFkyMuHfdW1A3s+qTQnEo8fMzB2zD4e
         j7gw==
X-Gm-Message-State: AOAM530ak2GbHU11rnoAVIp7lcrrqptwGuJfilkNiz8gsuCH6HDN3CDi
	6H/DtW3HDAflKxZn5Bgc5BY=
X-Google-Smtp-Source: ABdhPJwPr9TRFrBixHgRJRvKGkUW5LRjnPsA/+YPlQryHAHqBdbT8/pKUyM3JPwcyZeb2axXM+F5YQ==
X-Received: by 2002:a05:622a:1a95:b0:2f2:123:4575 with SMTP id s21-20020a05622a1a9500b002f201234575mr9962124qtc.170.1650833068010;
        Sun, 24 Apr 2022 13:44:28 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id d9-20020a05620a158900b0069ec88bfc13sm3913565qkk.50.2022.04.24.13.44.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 13:44:27 -0700 (PDT)
Message-ID: <20ac2caf-3fab-bd92-191f-3d4428c7e577@gmail.com>
Date: Sun, 24 Apr 2022 16:44:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikos Balkanas <nbalkanas@gmail.com>
References: <CAAxXO2HZnkFzUBtu+YY5aQ2Kr6NDNfvC0V0CSzx+4scL=iA7gg@mail.gmail.com>
 <2299DA86-434B-4FB9-8414-7311746868E0@gmail.com>
 <CAAxXO2HcY7sLCEqAvVWpp8V25EvFjTdbEZOf6oQRpNjaOnruug@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2HcY7sLCEqAvVWpp8V25EvFjTdbEZOf6oQRpNjaOnruug@mail.gmail.com>
Message-ID-Hash: JQLAJ752VLZ66YG4LIWLUZ5W6U5ZYHXN
X-Message-ID-Hash: JQLAJ752VLZ66YG4LIWLUZ5W6U5ZYHXN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Invalid key
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JQLAJ752VLZ66YG4LIWLUZ5W6U5ZYHXN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-04-24 16:42, Nikos Balkanas wrote:
> Thx for your fast reply,
>
> I powered cycled, but I didn't upgrade my firmware and FPGA.
> Forgotten how to. Haven't done it in a long time. A link?
>
> Nikos
>
>
Lots of these types of topics are covered here:

https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
