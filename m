Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE462EA476
	for <lists+usrp-users@lfdr.de>; Tue,  5 Jan 2021 05:33:46 +0100 (CET)
Received: from [::1] (port=44190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwe2Q-0005Jm-5U; Mon, 04 Jan 2021 23:33:42 -0500
Received: from mout.gmx.net ([212.227.17.21]:58687)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kwe2M-0005FB-M9
 for usrp-users@lists.ettus.com; Mon, 04 Jan 2021 23:33:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1609821177;
 bh=IG5OegoiD8kBXWU8S4ReLoKdhr73kLJsRmwwkcN8c3w=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hwYI5gVYkY0SzAs9Jao2tEOVJBJWaC6Elu8nZvlGiYriwZ7Hm/iX0zeN/5hrzmSW6
 kqFajJbdaN3jX+Oyfv3XcNTIST2+NtMMXw1l85OooNlW3pMeD11Nt/ArPXhaHtRwus
 ZM4tHm3EJKwhsDjA5ugnyFc5pIaQWs/Cn+kWqx60=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [107.173.69.236] ([107.173.69.236]) by web-mail.gmx.net
 (3c-app-gmx-bap76.server.lan [172.19.172.64]) (via HTTP); Tue, 5 Jan 2021
 05:32:57 +0100
MIME-Version: 1.0
Message-ID: <trinity-b5da53c8-0ba0-46c1-89a3-6b706b96fa38-1609821177203@3c-app-gmx-bap76>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Date: Tue, 5 Jan 2021 05:32:57 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5FF3644A.2050109@gmail.com>
References: <mailman.37.1609779606.30850.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-1751857b-dc18-4d8d-a18c-0ab947e52651-1609781110826@3c-app-gmx-bap76>
 <5FF3644A.2050109@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:SRFu2KDt8BaiagP2LG8smXfQ+rwqi+qZY3VsrMrbrATU9yri8VegUs6Rp1q44f637RVxu
 fT0IgpVLsXg+g0kkWbTh+rOUkTi7OOFiMej+OjVlqF1qhoax3MYUYYDW3KTXgwMDRAoxSjcGm/a/
 tNQlUDVm9itwjlrO45sk5ItsYun+eShohNFVn3mLTD0Qcw0NCJRVZYSHUpxV0MAj9+sAKyh74L3L
 CtUI07i6dfhT2R1kaXKZ7AJX2Nqu1KgiXzUr98KqNegFWdu3lhIQcKb+8xbqXDMpC7wzvaKLrcXg
 ys=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fqo0pZTjPvs=:PI0wTRE3SS2J0vcpfuBSmS
 uRVCwh+Q5E4so7uZME5FouXQ7jTFP41PxRjKuAanOSaARHqOIcnyRPoRzX7gykj1HbQOljHK2
 vH53y6HdV8UTCaArx07/gp4vI98QmetK0A+NAi4khMe8JVIPxpAwXpP+8pwkrzafAEIJWANle
 ngBswkjU31pJ0Xq0MGUB8i4OBZOhq2NiJ1nK1388mFSkPQm1htxCvLpSL1gYaLvcjI5YT8lJA
 aZGtK13nAHBNwgV21QiCWnaQwj3ho44+tH47Plv2yq8xF/x/C9uoEdnSgVh2yvpyCH710gQHC
 XZ5oNxeExgOTfrsYZ7w0gbHgdptKE8lJgpeWLcHIUiBSk/l7ob3Dxddyv4QiKXkCVQ5K0jEip
 x+REoEh2wMjlNht0zQLvcWnngVGZyf01nJhqqItasPrX6FmqpCGuZ9sT+38abIseLT/wxmZlb
 v3O1o0tyf1C3ZJKx4ciLRQJbZr7y249RCBriT5ksP1DaLzndjLYvOO3O1aVFF3f2TKOZwVSV2
 84FF57U/k6/eJWvFlfLc2Elv2QB2LGIHbyWpExYUMuqVszljtnmJaQoP7jgYeDTNlW8lgaGZh
 La10Ynl79a0bw=
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

Hi Marcus,

> On 01/04/2021 12:25 PM, Lukas Haase wrote:
> In an RFID system, the RX is *designed* to be up-close-and-snugly with
> the other ends TX.  There's NO reason to have an input
>    stage that is sensitive in the usual RF sense.  So, completely
> different engineering goals than in a typical RF system.

That's not quite true. Sensitivity *is* important (in the RF sense) because it defines operating distance.
Yes, many people claim RFID systems are forward link limited (which was true) but state-of-the art tags can have a sensivivity of -24dBm which corresponds to over 20m free space, 900 MHz.
The response from the tag at the reader is around -80dBm. The R2000 chip that I mentioned has a sensitivity in excess of that.

Indeed, this is the reason why *sensitivity* (due to self interference) is the limiting factor in RFID.

> > I have thought of a limiter already. This could be an option.
> > It's true, I haven't found limiters with lower power levels.
> >
> > Two questions here:
> >
> > - How/why would they add to the noise figure?
> Any limiter diode has shunt capacitance.  Which means that the degree to
> which input power is shunted to ground is proportional
>    to the input frequency and shunt capacitance.   ANY attenuation
> (whether resistive dissipation or shunt-to-ground pathways) in
>    front of the first gain stage adds *DIRECTLY* to the noise figure of
> that stage.   So, let's say you have a nice small-signal LNA with
>    a notional noise figure of 0.5dB, and you put 10dB of loss in front
> of it--the noise figure now becomes 10.5dB.  For RFID type applications
>    this doesn't matter that much--see my "up close and snugly"
> comments.    But for "ordinary" RF receive chains, you generally want
>    to minimize noise figure while maximizing gain and linearity.
>
> There are exceptions--for example at HF (below 30MHz or so), the input
> noise is *utterly dominated* by galactic background noise and
>    atmospherics--there's no point in having an input stage with a noise
> figure below perhaps 5-10dB.  So for HF, input stages tend to
>    be optimized for linearity at higher input levels--because even
> distant signals can be quite strong at HF--particularly on the lower end.
>
> > - The large self-interfere would result in clipping (hard nonlinearities). Is this any problem for the LNA (gain desensitivisation etc.)
> Well.  Yeah.  That's what the P1dB parameter is all about--the input
> level at which gain is compressed by 1dB.
>
> The overall take-away here is that generic radios (whether they be SDRs
> or others) should be thought of as *components* in an
>    overall *engineered RF system*.   That may mean things like relays to
> shunt the RX pathway during TX, circulators, attenuators,
>    diplexors, filters, RF-plumbing-in-general.

Yes.

To clarify limiter vs non-limiter.
My self interfering signal from TX can be up to 20-25dBm. The desired signal is a modulation bandwidth (few 100 kHz) away and the receiver should be as sensitive as possible to that signal.

Now I have the two options:

1.) Adding a normal attenuator of 40dB. This ensures the USRP input is always less than 25-40=-15dBm but it also reduces my desired signal by 40dB. In other wirds, my noise figure worsens by 40dB, as you mentioned.

2.) Adding an RF limiter with flat leakage +5dBm (I found SKY16602-632LF). Afterwards I add a 20dB attenuator to get the max to 5-20=-15dBm.

If I understand your explanation correctly, there is no real difference between these two (because the limiter would still crushes signal and with it desensitizes the desired signal on top).
Is this correct?

Would you prefer one option over the other?

Thanks again,
Lukas



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
