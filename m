Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB23D2AE6B3
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 04:00:29 +0100 (CET)
Received: from [::1] (port=44020 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcgN1-00051o-12; Tue, 10 Nov 2020 22:00:27 -0500
Received: from mout-xforward.gmx.net ([82.165.159.40]:35631)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kcgMw-0004t5-RT
 for usrp-users@lists.ettus.com; Tue, 10 Nov 2020 22:00:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1605063581;
 bh=8exMCudCVOxwhspZFFU59asc0nbE/lctaXuWiRcQzfE=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=GvykPNh+dl4GeDBSHGzP7hrMSiq7VP0emb21HQ5xEtou12OYC3cYyODreJIYfVL58
 cA1cLCV/BWH1QzNjsG07J7+F2V18oqWgnwt8zH1cJVPpPdtEZY6o1YeIKUhi2PnmUS
 frYZZGVibVj8uw9Du0CvPdD4b9w+Y6SES/kCoXq8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [176.113.74.228] ([176.113.74.228]) by web-mail.gmx.net
 (3c-app-gmx-bap23.server.lan [172.19.172.93]) (via HTTP); Wed, 11 Nov 2020
 03:59:41 +0100
MIME-Version: 1.0
Message-ID: <trinity-821c58e9-d71d-44d6-a04b-c4b8263bdcd5-1605063581383@3c-app-gmx-bap23>
To: usrp-users@lists.ettus.com, Marcus D Leech <patchvonbraun@gmail.com>
Date: Wed, 11 Nov 2020 03:59:41 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:16q1Zcf0CN7/BZRxra9Bmvqu15re8MwcatniPdVl51TgpVV3fV3c3u3UcERZt67nh8ijo
 MyrWjPChorzNsfwGwiFxERsDEmWXxk8/hGnhApCTPZ+Sv6ISHAmORZsarSukRK9HeRgzjeFoieq3
 Jaxiu/JzLNPXK9Kieqz3zNKblX+1nvn0R+U4X0YAQT0kDgOGtlYXOFyO5dr6Hn9lxzqnbK2f91zA
 CBOKxw2fk9f40qsHHakfhkoC5DcpM9bDXwjeWuqhgWh3DF0K5vtTNWMoftGsOrMdGf47P1o9h6Cj
 kE=
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:OhHkM+Us7aM=:UHfPm8IX5X0WIuuyQ2pLwbq+
 7LpMOrx+MXYj3jLtK6rU/M7wpFDnw4DMRPBKQBD3Yvusdxaxs0jGHg7nejiSXUpJnlz3eGsyX
 Qf9KZRLhHd283uXc46ael68TUHcNi5iogPrl02o2oD8AR1T1UfPCfMGuF+mqu8TLbnbyUvaVe
 IGp79OrM1oBLq/2I5R86iWIJfkGd4+akkDEQgN0E/CHdprn8uyUy/XoaJEG1ELf/g/79Yjp5S
 rVlNfz24qLHmNrNp1PM+jo0NPeCyBjPUnh8oQxGz/Xli5nSVT9SdgCPnHp5l/ZA9WkVQ8VPMj
 htVAExCnvrYV2+LVqjZvEGYVQ+9oP4KrzdB6Ri8A9OgsvUQQO2qOvZKXOAJtHQLknpIaCNtXt
 Jg1/Z5K/R9HJIeQVJO2BBDtxrhUJ5xDFRt/JSETMW7gXEUL+4iIaupYcl6j3Y9/0PzKgzRABE
 yRhptKkdcZRzTokEpG94beWeMmXcGhTEXcD/n+Deto9swv06+fdCRoxxRxix0nZSYlPfkXqSV
 04Uh6CBPlGHXXQX6DbXlLseAP7V+zMSyV+dX55LPOdmYrhgVG8ChMY85fuC2+luT2+xiEwMtC
 9XSPPMgHvwUwU8thrtej0ENOS7wnln8k
Subject: Re: [USRP-users] How exactly is "Receiver Gain" defined?
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

> On 11/10/2020 07:06 PM, Lukas Haase via USRP-users wrote:
>>
>> The reason why I am asking about this is because I would like to cross-check my measurements.
>>
>> My original question was about RX gain but it actually also relates to TX gain.
>>
>> With an X310 and UBX-160, TX Gain=0 and sending out a full-scale sinusoid at 915MHz, I measure approx. -2.5dBm.
>>
>> This is not consistent at all with the file above (assuming I interpret how "gain" is defined correctly, hence my original question).
>>
>> Would anyone with an UBX-160 be so kind to confirm/disconfirm which power level I would expect to see?
>>
>> (Preferably at 915MHz with TXgain=0 and full-scale sinusoid but I'm happy with any other configuration that I can x-check).

> So, according to the charts, at 900Mhz, you'd expect about -9dBm with a
> 0dB gain setting, with a full-scale baseband signal.
>
> So, there's a discrepancy of about 6.5dB.

Exactly. That's a bit too much for my taste and hence maybe my measurement is wrong.

> How did you measure the power
> level?   I could easily expect a couple of
> dB discrepancy just due to component batch-to-batch variability.
> So, how was the power measured?

I know, ideally you'd use a powermeter for that. But I don't have one. Instead I have a VNA (Agilent E5080A) which is freshly calibrated and hence the power measurement is very accurate (<<0.5dB).

I set the measurement as "B Source Port 1" which gives directly the received signal in dBm. I pick a "reasonable" IF bandwidth (50kHz), 100x averaging, save the dBm/f trace to a CSV file and import into MATLAB. Then I integrate over the frequency:

deltaF = frequencies(2)-frequencies(1);
Ptot = 10*log10(trapz(10.^(PSD/10)/RBW)*deltaF);

I can verify that the integrated power is roughly the same as the marker on the frequency.

Having said that, I just realized something very, very weird: With the UBX-160 I set: fcenter=915MHz, samp_rate=5e6, TXgain=0 and send a full scale, complex sinusoid with 1MHz. Hence I would expect to see one tone at 916MHz and a small one (due to I/Q mismatch) at 914MHz. However, instead I get the spectrum attached. There is another tone at 910 MHz and the spectrum is centered at 913 MHz (should be 915).

That makes no sense! What could be going on here?

Thanks,
Lukas



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
