Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F19B660633
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 19:11:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 299CF384558
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 13:11:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673028707; bh=70b6eMltCzF83qs3B2R2wY6WWJfVRCpJVZJMnqNcm4A=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=T33Q2tk6sQg09M6gwl2TKTVwt8Eui274j2hsM369fw3LFezb9PB63GNvGl55dYBYE
	 HlNcJEThJaqcXCZFaX1cf/4UHK4g3w1C0eJ0WABV16kTtU4UKQxvb47GGKO+q7enPs
	 ON55vkxtraYXJJ1wFxgHz/BuCytXs+thVSVAaa2kp6PllQ6UxDL3pEwbMOUgmvuJ40
	 0SC5THqN9vQpUU8gjnSCs3u2qFUqrcBXVhs1sofzyFpAOE1Jlty/QRBpFp4kzq5tWe
	 TqSny4d5JwGQ7ye1gPXF0eLRMy/wtfb7KHr9E4AZFd4wsfXdRDD8rQQPukretRtXuz
	 5jkCg9v5GaW5g==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 4189338453C
	for <usrp-users@lists.ettus.com>; Fri,  6 Jan 2023 13:11:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Rh0Q19WJ";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id m18so5197738eji.5
        for <usrp-users@lists.ettus.com>; Fri, 06 Jan 2023 10:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4UQoaXCN7CBPjq8mlDEh11CFqUC2hbCFF1SFiWoe80o=;
        b=Rh0Q19WJa3AN+dg3bXxmk8ujzxqP6VywZJJNIj8R6yH7lK6JhacGH5uWTSUyBHk0B5
         0aO97gCk9o2GANDcXf5o0c8+EKT3JNlVVNfmKDZ7sxNmeOAwwmyBrcN6yK39lChBw/da
         eh1xqVyCijmc52AAcEK9W5R2AoqpdXyQrX/KTMzE8/o8ZFRj32x5UWZ08WwsHjnspmj9
         5H01F1os6dNWSEEZj7pZDnH8XdYDNc49sxxOIbJcgDi1vgCrC7sPMQLN3rR5QJ9B+07m
         jfjTxWh2gomrBSzafd5K4reKC357JK0hnwczBEqa/XNolA24wTigdmAj+TaSUOFtdOzD
         DI6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4UQoaXCN7CBPjq8mlDEh11CFqUC2hbCFF1SFiWoe80o=;
        b=raIjlQhrK9dTku+deWl9s25K5Y8GOUssGvldlMyUJ3SMEvaMxaWy3MQyklWJICuy3p
         gzCsfaodEKSH7kaqY1Siir4+HJS4M2STEs6QSX/gP5N/wvT55Krzs47igBgGGpGkJ3Ps
         gVV9WcyZgzTwuJt9NoEVnBxenG+hu1DZY43t99RdDesYa+wtW5T+LQj270asRS4agsWt
         34VVy/jlvZ5BFdnFLKeqIAwOtjQu5Gny/RQkKG1p5hBzxGWW/U4u7uuJLCyrz5bpC0OU
         6glenHeTn6MzGNv9TG27ZOiWqY4kv+yNWrK8jUHH6XvQSvDPpFzzjvRC7PU3E6wVHTPN
         3ZFg==
X-Gm-Message-State: AFqh2ko9dEFmfg1A6X5zLYiMDkPw3tJXeWbjdbfqi+gTyJx9/xs/zVGK
	8XvqZFJ0XzPaOeawyMNwQg5VZMQaKNHfoThtDAI5Vw==
X-Google-Smtp-Source: AMrXdXvPt+KWMerPCYu5CLfXW56/V4BmP0nliBRHLp0TaC0O2EsQ5CLSMQ3mztk+8IDlxGnudMl/PtgnXbv6OGNUzJ8=
X-Received: by 2002:a17:906:2818:b0:836:e897:648a with SMTP id
 r24-20020a170906281800b00836e897648amr2942590ejc.94.1673028698967; Fri, 06
 Jan 2023 10:11:38 -0800 (PST)
MIME-Version: 1.0
References: <CAEXYVK6SzuxTxGM6kZkxE7+z8F7ooGDzsHAhxcedheDdz=yOFg@mail.gmail.com>
In-Reply-To: <CAEXYVK6SzuxTxGM6kZkxE7+z8F7ooGDzsHAhxcedheDdz=yOFg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 6 Jan 2023 13:11:27 -0500
Message-ID: <CAB__hTS=ShmgOyTbxdMU5RK4OtGP0ru5itBYSBx-bQKdAgAt2A@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: 3NC5H5EOOGKTZEUKKZFY5VB5XN5I3TAM
X-Message-ID-Hash: 3NC5H5EOOGKTZEUKKZFY5VB5XN5I3TAM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 Generated NoC Shell
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3NC5H5EOOGKTZEUKKZFY5VB5XN5I3TAM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 5, 2023 at 7:46 PM Brian Padalino <bpadalino@gmail.com> wrote:
> Before RFNoC 4.0, there was a generic NoC shell that was used instead of one being generated for each of the blocks.
>
> I see there is a noc_shell_generic_ctrlport_pyld_chdr, but it isn't used anywhere.
>
> Is there a reason that a generic one isn't utilized and that ones are being generated individually for each block?

With RFNoC 4.0, you have various options for which interface you would
like for payload data and packet context data. These options, which
are in the block XML file, determine which signals get passed in and
out of your block.  So, the reason it is custom is to handle the
variety of interface options.
Rob
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
