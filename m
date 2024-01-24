Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DC783B58F
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jan 2024 00:24:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A29CA385E5B
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 18:24:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706138653; bh=LmYS6gzBqigwjteyNU/X3sw0mIPofZ6LQZKbO7NTOEk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ICiTnz4itGd08pi5q2J0wYRfAh8/cIosKLZJwESnl4egX+kjqEtV65a6s9tOgEkMZ
	 Loz1EQY81nGBlhbs5UhwVxhNpTM2QVb4CTQNG1OKEsMJ9RucCG6A9EKLDwE/kub63c
	 qmcCxd8NJQwsTuZy8T/xclvOTooiPXUtidAk7ujG97oJnh/jFfF+IFceKoIwsA6VqI
	 RA3LNJeBS4+0HXWOKLul1kp9Fn30fnYG8yqFqfPGcZu3sYCDgAxRbfw9Ge0SVrX4Aj
	 5oVBYdssjAwJqXVD1bGk4wNYouvBXj1YsK9Q9zPAl6RXJU99t4N1qWRZmlakYw3QI3
	 NxN5PoI/QMBZw==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 3FDA8385D75
	for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 18:24:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Hk6qOa+k";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6869233d472so15887616d6.2
        for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 15:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706138644; x=1706743444; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=er9dj70dvedmn9CWMgjiVNUP3TOdVBus/o3eWqc38Dk=;
        b=Hk6qOa+kYcjuUc4EKoVPN9e1vBoK5s2nUfSNcqH4/N3rBlXCq6Ge8eQwcawCFUSoa4
         QoLsAXYdROlp1xhjfKwdFP0E5tOGa1KJ6OneKwUlJTF4+RdntxBaESq1D6Uv06q/m9kK
         li6POaeNRmZs2Myd6eoMJKBf83MwLIyuoi9sF+g27Jo8B4QXZs8XZeVyf3fyvdXGKYY+
         WnUsrWMutWDvSkRRaCAJ0Uubcji0Mbt25f/bjjg1C8YiRYhefx+N/vvINFLM6iLo2HQM
         9xOzxbwnuGT+GZ3nniZNx5BW42mguLfhjZRIm6QVgldRgZUsZEEzuzg0+NlgUtChoYBC
         Gz7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706138644; x=1706743444;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=er9dj70dvedmn9CWMgjiVNUP3TOdVBus/o3eWqc38Dk=;
        b=NMaUAxiiphjvpSpBM1ol5okOIbaEQSG9a+SuPSp+PesdPSemVq4s5ZPiU87qvGwPBy
         gxzyHyEBemaAM3nmZLD7SoymvESyOejL4MSnKnD4p8fiRQmv7YbLfq0H4iYCHB/ApsCy
         fdWsl0FkI/xwkKSFNnVtj9L7O/hmr+1naxeXr9XIBEb5ri6fvC66WMpBX4eG/jUHSAAI
         eSDJQmmxgEOsVGeuX/fqSBFqANFhWSGqMoNfcigoVpOvhG32dspOyjgYzJtQ44hVPgId
         c7pzGD2Ohea1BLMYvdVDaNHT0YXfvFVN7ZaCtKUK5TnuWMl7YK4MxNwCd3Kh/NEAGo72
         x57A==
X-Gm-Message-State: AOJu0YxtzZYuJUgxHBmivL2sQbzHOwX2NthAmE5lJkcHrhQ1lJ/SP8gk
	H7WDosK+1kIz/uS6ppVfurRFNRha2nwn1VXtranIzbZlA7jshHMF+TuBDxSx
X-Google-Smtp-Source: AGHT+IHOW6RZ2hDrkLoT6lpCVW+PN/1Zf9sQw//UsyDlxxjIQAkhPWf19fdRS3ooZTpT23BiDsJehg==
X-Received: by 2002:a05:6214:490:b0:681:30e5:1c5a with SMTP id pt16-20020a056214049000b0068130e51c5amr27974qvb.110.1706138644464;
        Wed, 24 Jan 2024 15:24:04 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id c11-20020a056214070b00b0067f7d131256sm4936799qvz.17.2024.01.24.15.24.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 15:24:04 -0800 (PST)
Message-ID: <beaf0d5d-2a60-42a1-b9fa-f3a4087f5973@gmail.com>
Date: Wed, 24 Jan 2024 18:23:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <uSK5PbmDBE3PRAJsvdslJj6noxEUK8ckloARk72R0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <uSK5PbmDBE3PRAJsvdslJj6noxEUK8ckloARk72R0@lists.ettus.com>
Message-ID-Hash: WG4IQOGIILOIRHSC53K2X3MIMQXNXFYE
X-Message-ID-Hash: WG4IQOGIILOIRHSC53K2X3MIMQXNXFYE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Dropped packets
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WG4IQOGIILOIRHSC53K2X3MIMQXNXFYE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 24/01/2024 18:13, jmaloyan@umass.edu wrote:
>
> I do still find it peculiar that the returned value of recv() when 
> data is dropped is less than the buffer size, then immediately returns 
> 0 the next time its called. Going through the source code I could see 
> why it returns a value smaller than the buffer size, but I dont 
> understand why it would return 0.
>
If the underlying socket call is returning an error, I can see the 
recv() call returning 0.


>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
