Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E503E3709
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 22:32:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DC61384D96
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 16:32:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hj7LkTID";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 81F8F383E8A
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 16:31:17 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id c9so13890619qkc.13
        for <usrp-users@lists.ettus.com>; Sat, 07 Aug 2021 13:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=EUvJ0gHqdqHiyzs601g5/7mg+n5yjAz4DeKmb/CVnPo=;
        b=hj7LkTIDLe+ab2MACBdCTxF30VNP90v8JSf2SCW1AYeU0moevucZ2vk4Nexf37nLwf
         SJtA65kaKSuZJ9BjAfsPu9qikjuS0EDdvqu5XRf+nNa/4aJxr3j6JlPEeM84qXEzqxIc
         tOx+wIqwQrdhQeQ7bUo+SZITgT9R0aJuHEqUK4FddZ9rBbqHbQhzGxivOPmqu6DPgQWi
         up9TSoRtaBpQs3TIaKXaO3vd5R6ckLEZJyrGFzZDr0KD6vuKRFK5pn2nsLEzgpxXWdlg
         ypYdOTCkLoY7+ioukl9o80Qu7wJExWAeMqwBMU+c6Ep7plpindZ1jGxmqxZjnNSeUqxX
         52cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=EUvJ0gHqdqHiyzs601g5/7mg+n5yjAz4DeKmb/CVnPo=;
        b=N53E71ylCQvtnK72sMS7eL80JGSpTcYdvXiNnzZWOhKPQ68O1JoKg/vAlt6E4d9J9k
         +gtYm2+fNRDBYB5s5YRjZRPqyD3206thdqCIq54UQcywCPMCP4mF0ElcDN0jt1pZhRUw
         /qdzWiePmF32nXpV9iFIXNc/y6cxVhE+KCMPlibrCgAPvg4VsukYFKrp3BGDSzcGtwNX
         Llee1HhrnQ3ZBtA4fOV+eTf/lNAtsln4Q/v2O9DJhsatxIDeG0Q1V1DClX76CKW5rjsg
         ivkT53GQeqEMS7KuBWZNI/jr0HvrNhOu+1KbM6wMXmDiW1c2Qkl9Zyuo3n5Hx7NaWVmA
         uJIA==
X-Gm-Message-State: AOAM531FMOB+CPB50UiLVeUGRVHzkyQcjRG7epnnuy0pajn712wDQJ6J
	NyERV8FD6qKexwYdqFAf1Un5G1OfAr9GWQ==
X-Google-Smtp-Source: ABdhPJxVOoDqTWj2zM2M6uj/ASz4uaEjiqzekqtQ/C+2fa+/i0x7wntg1fwokZoOTzSutkxkStBIIA==
X-Received: by 2002:a05:620a:130e:: with SMTP id o14mr16033035qkj.254.1628368276821;
        Sat, 07 Aug 2021 13:31:16 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id z12sm4756657qtw.90.2021.08.07.13.31.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Aug 2021 13:31:16 -0700 (PDT)
Message-ID: <610EED93.5090703@gmail.com>
Date: Sat, 07 Aug 2021 16:31:15 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <sS0Wsm0b949VT4FfgaX5Bu6SkQwZFIOWs3HfAW1zxLI@lists.ettus.com>
In-Reply-To: <sS0Wsm0b949VT4FfgaX5Bu6SkQwZFIOWs3HfAW1zxLI@lists.ettus.com>
Message-ID-Hash: WZSOLLQAUH2V5EWBQXQV3SDMWIOAD76I
X-Message-ID-Hash: WZSOLLQAUH2V5EWBQXQV3SDMWIOAD76I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 ethernet connection failure
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WZSOLLQAUH2V5EWBQXQV3SDMWIOAD76I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 08/07/2021 04:26 PM, xiapeiqing@gmail.com wrote:
>
> Hi, Marcus,
>
> Thanks for your reply. The clear & precise problem description is an=20
> endless pursuit I should try to do better. My experience is a lot of=20
> problem get answered by itself when it is described clear enough to=20
> the very detail, it=92s part of a learning process.
>
> My current guess is the FPGA program after JTAG download runs the ZPU=20
> to retrieve the existing settings, such as the IP, from EEPROM. The=20
> page(s) for setting must live outside the pages used for FPGA image,=20
> as the uhd_image_loader process won=92t change these settings. This is=20
> another entry in my TODO list.
>
> Wish everybody a nice weekend.
>
Indeed it was a very deliberate design choice to have the IP addresses=20
in EEPROM entirely outside of the area for the FPGA. Otherwise, every time
   you loaded a new FPGA image (such as you might want to do when doing=20
your own FPGA work), it would change to whatever (perhaps default)
   address was in the FPGA image.  You want them to be separately=20
programmable things.


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
