Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C99012E9BF5
	for <lists+usrp-users@lfdr.de>; Mon,  4 Jan 2021 18:26:00 +0100 (CET)
Received: from [::1] (port=39866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwTcC-0004Ns-3y; Mon, 04 Jan 2021 12:25:56 -0500
Received: from mout.gmx.net ([212.227.17.21]:59595)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kwTc8-0004HZ-Ci
 for usrp-users@lists.ettus.com; Mon, 04 Jan 2021 12:25:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1609781110;
 bh=t2tEcRHYhfb/1YT9U4JiknxEHIdHB+0w6lrwtenHvI4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=CSGqRtA+eJIeumHG3hHUqe+TCfj+AFfEiMf3CGWcsi9XSoOG18sVRumxiVjvgINkv
 kO9KKHx/TGR+8ZC0H3piObZWMRwbZb5sOCR9/hOyY5A5r2LDhGp0RoaLipo6Gjg7zy
 0iepqgzR4tEtbhOvoNax+oi+1NokVcXoT4gNndi0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [107.173.69.236] ([107.173.69.236]) by web-mail.gmx.net
 (3c-app-gmx-bap76.server.lan [172.19.172.64]) (via HTTP); Mon, 4 Jan 2021
 18:25:10 +0100
MIME-Version: 1.0
Message-ID: <trinity-1751857b-dc18-4d8d-a18c-0ab947e52651-1609781110826@3c-app-gmx-bap76>
To: usrp-users@lists.ettus.com
Date: Mon, 4 Jan 2021 18:25:10 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <mailman.37.1609779606.30850.usrp-users_lists.ettus.com@lists.ettus.com>
References: <mailman.37.1609779606.30850.usrp-users_lists.ettus.com@lists.ettus.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:jNRxk0zUG1jYdebBCR2KekPcI05Wcn/dXqibMPPApfPP0Dm1+rKnGIOcADbn+CwH/YrpR
 Xk2NvoI391TgYti/2A9d8YRAEYGwZ0KQpml7nf1VJBz1KQ5R4GmkOwefmcY+xd0Q8krYGZJfhEw1
 1AKB5B9KrkTVN6eHBMflL+TORF5zB75QtNn0KQDk/WTOl8VR1OIl+Cvi4SjWpr5fvi6PgTx/m9ho
 SckiB21/t+ziJQ37yaDf5fvGSYISzpSyxICF0DGvemlXWWcgr3kTA0mKj3KN7OdUJoz7Ga3S5cYh
 ZI=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rSwO8nZguJQ=:0ulXIuTrY1uEAY1unhemSG
 luesw1YlWilx27BrgZRNZsfkNyTb7cj4r5vt3ua3awyY5BJV0Tqg3yV811MD/vx4cM7CwFM2G
 t861Mj3sWLB13SddStLtC/2kJbegfkE53aj83eQ3iR1xGpV7RtxiYJ0dn88nQAchN87bEN/AH
 BMBQGJEhL7au+bD2HJJpfFslTHMWHUkk3hG/w7X+HKV8Ddq2EhPst71cUSMpzYWMBrCu8WdJ5
 TjCuS6btWGZ4/SlHgQG4+rITH4nA/9vhmr8seVOCrhPhyQ/hMrjyJcPkNk4JVSbsIx6//Sd3j
 18I1Jdeu1ksSbUV25dS2XFynlgrxFTrdfgbqO3ZZ99m4olbZTqK75ij96P9WueYaPGRD7hUzi
 KvzhsoUgDr/mmcqlX7M5bLkr2WFArz+U/UKXMp3Hjo+pJX/1nDG3EXo7azyMEZZwPn3FUCo0F
 vM+x5EtpC+PxwPILmj0FAMBXPt0huszws87miRuDTI3rmloHJ9/hHpkUFQI3qgQk3cTeB3k09
 4BsXmv0HMX+x4xJ5QB66p/RCFO/Z1sR8ITrh62MHXabndvbecwF4A6ReEXrc2zcrUd2q5ab+h
 Z2q1Eeh6NOey0=
Subject: Re: [USRP-users] X310/UBX as a monostatic transceiver (e.g. RFID
 reader)?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

> Date: Sun, 03 Jan 2021 21:12:18 -0500
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] X310/UBX as a monostatic transceiver (e.g. RFID reader)?
> Message-ID: <5FF27982.9050004@gmail.com>
> Content-Type: text/plain; charset=windows-1252; format=flowed
>
> On 01/03/2021 07:17 PM, Lukas Haase via USRP-users wrote:
> > Hi,
> >
> > I would like to use an X310 with UBX in a monostatic antenna configuration (same frequency range). This is for example common in RFID readers.
> >
> > My transmit power is 30dBm (ZHL-25W-272+ after the USRP), fed into a 6dBi antenna.
> >
> > Now if I use a circulator, I find isolation of around 15dB (e.g. https://www.everythingrf.com/products/rf-microwave-circulators/mesa-microwave/769-185-mmccc700a). This means my RX input sees 15dBm. Stupidly, the UBX datasheet wants a maximum input signal of -15dBm. So it's 30dB too strong!
> >
> > Alternatively, I could use a directional coupler. However, the directivity is typically around 20dB (e.g. https://www.everythingrf.com/products/directional-couplers/rf-lambda/45-89-rfdc8m3g10d) which brings me to +10dBm at the RX input. If I assume directivity is not an issue, the signal at RX is limited by the S11 of the antenna (typically 15dB). With 10dB of coupling: 30dBm-15dB-10dB=5dBm. Still too high and a incurs a 10dB noise figure penalty.
> >
> > As another option, I could add 30dB attenuator after the circulator. But this results in an unacceptable 30dB noise figure penalty.
> >
> > Do I understand anything wrong or is a monostatic TRX just not possible with USRP?
> >

Hi Marcus,

Thanks for the insight(s)!

> It's not even *slightly* "stupid".   An RX front-end that is sensitive
> enough to connect directly to an antenna and be able to receive low signal
>    levels (typical of over-the-air work) CANNOT have excessive input
> power.  If it does, the coupla-molecules-layer-thick gate layer in the
>    input amplifier transistor will simply cease to exist.  This is not
> peculiar to USRPs--ALL over-the-air receivers designed to be sensitive in
>    the VHF bands and above have this problem.

Hmm, I had thought so but this is a very common scenario.
How do RFID readers do this then? See for example the state of the art R2000 (https://support.impinj.com/hc/article_attachments/360000749340/Impinj_INDY_R2000ProductBrief_9.6.18.pdf) ?

It specifies an RF input power of +15dBm.
It specifies a noise figure of 18dB. Which means if there is resistive attenuation, it can be a maximum of 18dB.

> You can put in limiter
> diodes, but such diodes are usually "limited" to a lowest power level
>    of perhaps +5dBm, and will inherently add to the noise-figure of the
> RX chain.

I have thought of a limiter already. This could be an option.
It's true, I haven't found limiters with lower power levels.

Two questions here:

- How/why would they add to the noise figure?
- The large self-interfere would result in clipping (hard nonlinearities). Is this any problem for the LNA (gain desensitivisation etc.)

Thanks,
Lukas



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
