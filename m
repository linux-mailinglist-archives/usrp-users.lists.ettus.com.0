Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FE4589F8E
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 18:54:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B295383EF7
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 12:54:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659632061; bh=nB6mzDJI9fHVyR5dC6ux9SWKdIUO53Y6hiJ00ptasNc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iiNpmV/WvqWQynLqjESYg1vtBP8aPjIORtyia9Doy4gdNtvyj3DM3aO2Slw6F1qAE
	 m8Gl5sJV12eW9snnsdugG6BJtmlUafjg6pACpkph36Cu+IARTt7W/McOpt9nFO36nj
	 7PYzplu0AmU+xFrgNh8b5POGHwY9/3/hFJ7MkET9gmkkUXSnYMr0fHeQ0+v5Cll4Zv
	 1YcZRwtOpb40z9Lc0u5zpZ0jVgHH95Cv3JS6v3VLyjzCyn9nIr1O3YVn0YJn/1e23o
	 majxAhxQuTtQLhIKbg3yDtCnmBzbfhaoRodia+GAaAVLSj1B56jNDkK7cwLH7vqdtx
	 +BjYDjWKwWfMA==
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 15C16383EC8
	for <usrp-users@lists.ettus.com>; Thu,  4 Aug 2022 12:52:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MRmF9PEb";
	dkim-atps=neutral
Received: by mail-lf1-f50.google.com with SMTP id u1so21399001lfq.4
        for <usrp-users@lists.ettus.com>; Thu, 04 Aug 2022 09:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yvW3c7KCSngjO5qaa2ACczJDl7T0louh/pQOjp/U0as=;
        b=MRmF9PEbHvmpcpSeB5edoSODZFItva8jR44J22aP5iVP6kEGbfSWrvcHpiM/e/fc6x
         26YynNEHhPaa21+tZFX2LfMxlVRSYx2t9Quo4WIkND0bKWF3X5C1WV+yCLmM+36vtkNV
         +ix6bTLbISguZTMMZf8e4uJjUPE4kE50C4hdrSE5UPGXui30Pszi9pqPnV+UaZwV6+n+
         4tALCNqGECp7Y6aBhJuH+gMl4RO2hS6rRljrsPh8ma6r9aKkRolqLUdvUxuzNXdYzZ5V
         GL6VJ9ZNLN5z/iLWui/PMsuZN3gpt8KwXn4eIrRI03mo/F2NPWBJfsaL6m/JG9EdlYzF
         CNtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yvW3c7KCSngjO5qaa2ACczJDl7T0louh/pQOjp/U0as=;
        b=ccczgliJn8kkCaFpG2Avm/IVMmM63uBcoPyj9OIy8ddUrsB39Cs5/yWLeYsI+HOykZ
         1uOT8EPsI7S4EVWkawZ/P++ViamfykLFl06hj8KvcR0xuDON4iqwSshPK6F7I1TD137p
         CHLoaPCUhI5EY7dHKiyu+FlWOG53ekuh3EOoYpkPnP9hrJpxwURq0HzlX+gTWFbZ+t3m
         FJuJ4Lb6Ad7ue69UMurTfVImK3Srxs/DPesBj3/BhLUg1/d6lPQ2+9cywygrjIkkFxim
         rqD0H8yK/uBxK88jzQvuw0DxBU3dy3dddZaP1NahsdNh6QYdutfPQwiGgbBLVDM2Qw2P
         k8kA==
X-Gm-Message-State: ACgBeo3JKXut16VCsKcrtAug1lvpQl8GItQLB+imomz0vtCi4sF5AfQl
	4MU67Fjq6diE2ws/pYyzxHxTyhbJ31GYaIjhZWlqLYpV
X-Google-Smtp-Source: AA6agR4dyMlkzo7Ayy76FNpNRImQHvX0ZrbRvxQqwi8ZJKGBAtG/42OIJNqn0YpV4GoxJyF7tQ85KOii+2labtIWheM=
X-Received: by 2002:a17:907:d07:b0:72e:ec79:ad0f with SMTP id
 gn7-20020a1709070d0700b0072eec79ad0fmr2138458ejc.296.1659631910551; Thu, 04
 Aug 2022 09:51:50 -0700 (PDT)
MIME-Version: 1.0
References: <Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk@lists.ettus.com>
In-Reply-To: <Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 4 Aug 2022 19:51:38 +0300
Message-ID: <CAAxXO2FAwtczPxOD6YCbZkCexibTYGmOUfM8csWsHgAvZ_BGDg@mail.gmail.com>
To: henry.powell.xx@gmail.com
Message-ID-Hash: GPVVVEZZTXB6ZTQ3YRLJS2WZ7AYOIRS2
X-Message-ID-Hash: GPVVVEZZTXB6ZTQ3YRLJS2WZ7AYOIRS2
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Decreasing Power at Higher Frequencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GPVVVEZZTXB6ZTQ3YRLJS2WZ7AYOIRS2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Wow! That's rather drastic:(
I would expect that Friis equation is independent of transmission
medium (copper, air).
Besides your observations match the theory very well;-)

BR
Nikos

On Thu, Aug 4, 2022 at 3:01 PM <henry.powell.xx@gmail.com> wrote:
>
> Sorry for misunderstanding. I think this is my fault. But as i mentioned my first question, when i say cable connection, i mean i connected tx port to rx port with cable. To see the device settings clearly, i did this. Also, I have b200.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
