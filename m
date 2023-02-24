Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4446A1F58
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 17:08:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B17D438406D
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 11:08:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677254917; bh=DS7IXaw0jzWC56trgGtyGPBAF9DFLGJGy3OIs5sPitw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=VhkZfgE9DeVfeApcZxHlo2BIUtSCVfplLEYLy016ejKwuGDliK1PZ7mSD/unljzoh
	 X0rU+5CA3OHViMUUHUkD1KuKGllKewF7a0EDaZWsLQPXIYCLt8WIHngZqcXJbIeSrd
	 gV0eSaIZMWQgy1nm5d/Dn1aIu0/DL1Iso1HDA+k0/b8e+H9LRcuK2cUQEFtDoiYzm5
	 eAr0/ozDb4N9sowjNHHs8mFpnMPo3OAFjkftKAPXynbc1k9Aad4bHKVIBzPxImwG0L
	 LRGdAYN2q14HolXiWqnXu68VMNdmMksdeKDOkb8lTV06lfNgHBqFCfgOz06lsFr2jp
	 39Hx7aev5R0Tw==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D93A384222
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 11:06:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dFtW45xK";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id ee7so41544100edb.2
        for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 08:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yOWKGfcuaeBnlLdCznsbyCuK3nU71+7WLlxpBFqX+3g=;
        b=dFtW45xKiTqUjcV1p6r/xiIsajyR4Mg8N4/AlRXced9JbQLCPgtzs44+NzEmoTp/GB
         x2RDmesTnC22DMselcUEeE5xRcUy1JyrSUnr3E5aqucDFwTwhzKPar2a3exmqHs2huw2
         U/F04uu+tbKiM8WWrDdCJkbD7PMVbyjCqDeSynbjdGjWL3DpmSgKN1Edam+bhl11gUod
         FAJJgePbEl3apLU+v4HATdxxVsVs/6UIwvfL6G5bfndzTsPq97HwBhGdCaYgV/IrQz9I
         RVTV7Rf/ZXv0lE4T3/7YgEJrmfELOg/6pCY241tpfMx+UCoGpA6b8vpbWCAlTPzODbMX
         YHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yOWKGfcuaeBnlLdCznsbyCuK3nU71+7WLlxpBFqX+3g=;
        b=wKx+F+zPwjfK5hV7mDNrp7qOmoQBp531PE8bOJOdwti851ejpg154US3sWup4OZxvB
         ePnFXVh7n8tss6oEcKiJwmQBKMV2TSoHdRKAaW3dQP5bF+4/j2YJ7UcCT17vGiJYYPwg
         Yb2dU1dV5mOhtoqmmDih+3O50TcwWLtVrjI6Ne4pAX3iztJkCwXIZ74JkBAdWwPK0ItW
         FZVeE1nPPMRMzCyYJd2yRieeB2BEQZXCZTbiv4a8fG8kF5WJ1Y00nzjdp1jJfIsUR6kY
         XSjIIDtLzb4YvfK631qPGbOhP934daiANNzzwALk183A4w5yIPs07QPcYD6eXkLPe8+f
         Cjsw==
X-Gm-Message-State: AO0yUKWGjlJGijZepQo0zo1AXk9upvKUE6XCLbQMQj442P2FxB5gA7Jm
	Ixw0DqoSsZGd8+de5RFdiU0o+t31WcRk+qQE8PlWs6Wn5lgJ4w==
X-Google-Smtp-Source: AK7set8KxlojKIk+6Dyl7OI7sYnDDcI2H2mrd/bMiOAHq61hH0gPusskuXiRszr+a5W3l5bdFd0vHPh/+S2tofx1rOo=
X-Received: by 2002:a17:907:9690:b0:8e7:905b:cbc9 with SMTP id
 hd16-20020a170907969000b008e7905bcbc9mr122327ejc.6.1677254816054; Fri, 24 Feb
 2023 08:06:56 -0800 (PST)
MIME-Version: 1.0
References: <DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <b3cda3ac-b1c2-5788-1fe7-14e06d710c3b@gmail.com> <DB6PR02MB2981F4FF97EE0FBC112DF396E7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <b0bcd12f-a3e4-8c99-2d23-005ff6824217@gmail.com> <DB6PR02MB298163AD80446D2D087D4E52E7A89@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <e03719d3-1105-8610-0949-a57c67ef0607@gmail.com>
In-Reply-To: <e03719d3-1105-8610-0949-a57c67ef0607@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 24 Feb 2023 11:06:44 -0500
Message-ID: <CAB__hTS4D2PLxvnUFJ_TKX3F_GvDq_UcA=09cviDrJDs=DKh3w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: V7S7OYCOJWKIM53H3HQ4DMHAGF6DAHNP
X-Message-ID-Hash: V7S7OYCOJWKIM53H3HQ4DMHAGF6DAHNP
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Peter Featherstone (XENINT)" <peter.featherstone@xenint.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd - read IQ samples without discontinuities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V7S7OYCOJWKIM53H3HQ4DMHAGF6DAHNP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Peter,
Each recv() call returns metadata with a timestamp. You can verify
each receive has advanced exactly the right amount of time
corresponding to 16k samples.  If this verifies, you haven't dropped
anything.  The metadata also includes the Overflow indication. To be
honest, I have no idea why you aren't seeing the "O" right away.
Rob
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
