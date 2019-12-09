Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C08117754
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 21:21:12 +0100 (CET)
Received: from [::1] (port=33288 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iePWo-0006t5-RD; Mon, 09 Dec 2019 15:21:10 -0500
Received: from mail-qk1-f179.google.com ([209.85.222.179]:39038)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iePWl-0006GK-KJ
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 15:21:07 -0500
Received: by mail-qk1-f179.google.com with SMTP id c16so5908063qko.6
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 12:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=qlzINP1USWOIyrtkR9QNpwnKEP06KnqkRW4xanjfly4=;
 b=IPLO0Gq+u9ATKoDrlQuznne0mbSB1J59NCGRFlrq+eNf2Usd6LWhEzCVbZX74B3ekK
 Wfk1nUOqHWe1ZUw8rJA0pdoXL2pRNxE9aVpOc2Jglw3VHIi86QExCEHvIhEvtsFh3Wp3
 nYmjAQDM3I32Z8a/ILx3TvvUFgdU0cB/ygdV5yvWykULVt9n1Gd15J/jAVHcSDQNtStn
 clLtouk5OSSm7Z0z3WPmCTYh7CgFUt9DDXheEn99uSuybJn5kILFh8rbne/j6PIGYV8P
 fNzh6vWeMmikr6cOiTHIf/hlCVQ3HKRkWSgkMmBdBF9ZgImAtDDcJTQSzPsRiiQJuG3a
 3G6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=qlzINP1USWOIyrtkR9QNpwnKEP06KnqkRW4xanjfly4=;
 b=HXG5ojvSOu+J41eLPRqpdXDkkEv/ZaDCfBBVHiYS+HZAI6kMNHaVRfxJ+uOpE5MHfz
 1dSR0lyH/Gw054s3omQrsxMen90smtStpurOrvTRjMICAvCXQ1FJJY1NBoXl27DUaMaV
 //WNHRg3OXRGCG2FEkO2qLl57oKEpAZiE/r8Up3Tfer1Ep1XM9lyPwy3GN0WlCz2Qp3V
 QGDBNTM4LtAqmAktsjOSZdCHQ0mfK4tKWiTYsLoKJul9UV84N0KziktKVYD565p3bRP+
 DNM3fiV4jqIRThjb2jfOOBaY2FKAnZHeUK+GByu0+UJJWXd1t3/tCrOe0F22HPmERuvJ
 0FPQ==
X-Gm-Message-State: APjAAAVWJ0pMFDidNhuf0wComDoyitis1VZ7BEifs6ZDQsCmJ/QYeG9j
 mF1C39A19U2k9JXRD+zlLKKldFTX
X-Google-Smtp-Source: APXvYqw0cQscGaInS9TWnZBVDAGtle/hh5sOXpbxqG2nylr4ucpM0Y9BilAdRo/REANFjbVhiHk0qg==
X-Received: by 2002:a37:7d0:: with SMTP id 199mr29737652qkh.20.1575922826944; 
 Mon, 09 Dec 2019 12:20:26 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id t39sm259164qtj.52.2019.12.09.12.20.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 12:20:26 -0800 (PST)
Message-ID: <5DEEAC89.60403@gmail.com>
Date: Mon, 09 Dec 2019 15:20:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
 <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
 <5DEEA426.1020108@gmail.com>
 <trinity-31ea48d5-e13c-4c84-873c-f3e1f3ff3aae-1575922308346@3c-app-gmx-bap48>
In-Reply-To: <trinity-31ea48d5-e13c-4c84-873c-f3e1f3ff3aae-1575922308346@3c-app-gmx-bap48>
Subject: Re: [USRP-users] Phase relation between RX/TX LO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 12/09/2019 03:11 PM, Lukas Haase wrote:
>
> No, I only have one RX channel at the moment.
> --> One TX @ f and one RX @ 2f.
> The phase relation between this TX+RX should stay constant/coherent once both TX+RX tune to a different f and back.
>
> Let me know if the setup is clear, otherwise I'll try to draw a block diagram/equations or I can also send the GRC screenshots.
>
> Thanks,
> Luke
>
>
You code shows two RX channels:

         now = self.uhd_usrp_sink_0.get_time_now()
          self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(1))
          self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(1))

          self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 0)
          self.uhd_usrp_source_0.set_center_freq(2*self.fcenter, 1)
          self.uhd_usrp_sink_0.set_center_freq(self.fcenter, 0)

          self.uhd_usrp_source_0.clear_command_time()
          self.uhd_usrp_sink_0.clear_command_time()

So, you're measuring the phase-offset between the TX side and the RX 
side at the 2nd harmonic, and expecting that phase relationship to be
   the same across re-tunes?   I'm not sure that's possible.





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
