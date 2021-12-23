Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB8E47E230
	for <lists+usrp-users@lfdr.de>; Thu, 23 Dec 2021 12:22:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63501384690
	for <lists+usrp-users@lfdr.de>; Thu, 23 Dec 2021 06:22:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gnuradio-org.20210112.gappssmtp.com header.i=@gnuradio-org.20210112.gappssmtp.com header.b="plSAuOLE";
	dkim-atps=neutral
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 2ABDB3844CD
	for <usrp-users@lists.ettus.com>; Thu, 23 Dec 2021 06:21:30 -0500 (EST)
Received: by mail-wr1-f50.google.com with SMTP id s1so10853242wrg.1
        for <usrp-users@lists.ettus.com>; Thu, 23 Dec 2021 03:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gnuradio-org.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=1N5xYZcnJv7zNIqZpN2PI3aVr2pwnDr1I6bmwKCBnIU=;
        b=plSAuOLEcY0jORgVbvhlG/1p28OZhaW+bmF+Np/zR983v8mumLCifC1fHX2kNHrejF
         3yxflDOOGwUedktPdJZncnaBfjbPGJERIjJktSGD3mA/OUG4qTR1foJGJT9fe//Dksf0
         pqNU5BSemZOepBB7xTV7RjUvxoaz7OXQT5rtqggsD6m+Pg8xKtpx/LBi8ZprnpL604W8
         5TWFKigR9hc+pTjV++zOKmxR1dXvwMdGfsN3GKqADAjyI5dfUFqM69AbbowwfVHGZaZN
         G+V5RM6oBy152Kt9LrgHXaW+foGduho8eaexhSzXTUeblvHKhjil7zjiyxDFRB1kHgR1
         +faQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=1N5xYZcnJv7zNIqZpN2PI3aVr2pwnDr1I6bmwKCBnIU=;
        b=UWsBziJfkZrLHSOQLgB2iJGikBGIX4OpjDWFvbMjdvKml+sszsl2DUIKC0nm5Igs2O
         7b+Gbe2ylS88/VVK2+EN0zp6DsCvWeRg2OcIoS6uaHDLnaU6U45jlNrJ7D56p7p7rrpH
         LAlXuoUB9xwlGvi/uGu+j8IpsmxRFYE7UmJHLjYeK652wnQVQCXUQ4gpwZ639YDG2tv7
         0k47ocy4siE48kqK2kbMwsBr/Q8cQoAXXEZGG+BpYJBqxbOJ02Sy4ztpznlCimIE1YQq
         Qu81KI5ndXKhiV4V+5pDeIhQEz0C/NbnGsTKCePTW4JWs7ahF6MoPJQGwVkIcEnYqdpz
         Rp9Q==
X-Gm-Message-State: AOAM532i/boRAS8jTGxBK2IbLREGEGTdESH0Q8Tyxu8l2o8l29xEFc4D
	7OgGBcvLXQFYZVeUbQ9yPog3vW9K3gHwjg==
X-Google-Smtp-Source: ABdhPJwm5hgpQHERmhXKbf/jk0BJLIFh5lZGIqTcFxnOY+oiJR477X5PfBbENGyyvj8ai9VkedXTIQ==
X-Received: by 2002:adf:d841:: with SMTP id k1mr1518162wrl.396.1640258489112;
        Thu, 23 Dec 2021 03:21:29 -0800 (PST)
Received: from smtpclient.apple ([2a02:8071:3edb:5600:30fe:f2f3:309b:73e])
        by smtp.gmail.com with ESMTPSA id y12sm5072378wry.24.2021.12.23.03.21.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Dec 2021 03:21:28 -0800 (PST)
From: Andrej Rode <arode@gnuradio.org>
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Date: Thu, 23 Dec 2021 12:21:27 +0100
References: <C32F8974-2898-4F3D-BD12-2F5CDFCAFE99@gnuradio.org>
To: discuss-gnuradio@gnu.org,
 usrp-users@lists.ettus.com,
 osmocom-sdr@lists.osmocom.org
In-Reply-To: <C32F8974-2898-4F3D-BD12-2F5CDFCAFE99@gnuradio.org>
Message-Id: <4076CEB4-3212-4F26-9FB2-6B10F47E41F2@gnuradio.org>
X-Mailer: Apple Mail (2.3693.40.0.1.81)
Message-ID-Hash: PRYOTOXEWI3ZQZ6OHPKFZZ7V2NNICKYJ
X-Message-ID-Hash: PRYOTOXEWI3ZQZ6OHPKFZZ7V2NNICKYJ
X-MailFrom: arode@gnuradio.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [CFP] Free Software Radio DevRoom 2022
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PRYOTOXEWI3ZQZ6OHPKFZZ7V2NNICKYJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all, 

Gentle reminder to submit proposals for presentations about e.g. your own projects, FOSS projects updates or other fun hacks you want to talk about. Our CfP is still open until (and including) December 26th. Do not hesitate to contact any of the Devroom managers if you have questions.  
Presentation slots are not fixed to 30 minutes, if you have some idea for a lightning talk we can also fit you in, as well as if you have some longer presentation to give. 

If you have creative ideas for a non-presentation format we are eager to hear about it.

Cheers,
Andrej

(For the Free Software Radio Devroom Managers)


> On 6. Dec 2021, at 02:04, Andrej Rode <arode@gnuradio.org> wrote:
> 
> Dear friends and fans of software-defined radio and free/open-source radio topics in general,
> 
> FOSDEM 2022 (the free and open-source developer's meeting usually in Brussels, Europe but **repeatedly virtual**) will again feature a track on Software Defined Radio and any other radio-related topics in the **Free Software Radio** devroom. Therefore, we invite developers and users from the free software radio community to join us for this track and present your work, ideas and/or demos.
> 
> Given the current circumstances and the virtual nature of this event in 2022, we are asking the presenters to pre-record the talks, which will then be gathered by us and streamed during the event. Presenters are also asked to be present online during their timeslot for live Q&A. 
> 
> Software Radio is an important tool for educators, tinkerers and industry to implement signal processing and communication algorithms in software while still allowing for easy access to real signals. This allow anyone to access the EM spectrum out of curiosity, for research or for profit. At FOSDEM we want to foster collaboration and exchange of ideas between different projects in the field of SDR. We hope to network all these projects, and improve collaboration, bring new ideas forward and get more people involved.
> 
> The track's website resides at the link below. The final schedule will be available through Pentabarf and the official FOSDEM website. Notice that the reference time will be Brussels local time (CET).
> 
> https://fosdem.org/2022/schedule/track/free_software_radio/
> 
> Additional Information will be also available at: 
> https://wiki.gnuradio.org/index.php/FOSDEM_2022
> 
> ** Submit your presentations
> To suggest a talk, go to https://penta.fosdem.org/submission/FOSDEM22 and follow the instructions (you need an account, but can use your account from last year if you have one. Please do NOT create a new account if you already have one). You need to create an 'Event'; make sure it's in the Free Software Radio track! Your submission should have the following information:
> 
> * Your contact Email
> * A descriptive title and subtitle of your talk
> * A short abstract
> * Links related to the project
> * [Optional] A longer description of the content of your talk. 
> 
> Lengths aren't fixed, but give a realistic estimate, and please don't exceed 30 minutes unless you have something special planned (in that case, contact one of us). We will typically go for 30-minute slots -- shorter talks, unless they're really short, usually tend to screw up the schedule too much. Please take into account some live Q&A at the end of your presentation, going for 25 minutes presentation plus 5 minutes for Q&A will provide a more lively conference experience for everyone.
> 
> You aren't limited to slide presentations, of course. Be creative. However, FOSDEM is an free software conference, therefore we ask you to stay clear of marketing presentations and present something relevant to free/open software. We like nitty-gritty technical stuff.
> 
> Topics discussed in this devroom include (but are not limited to):
> * SDR Frameworks + Tools
> * Cellular/telecoms software
> * Free/Open SDR hardware
> * Wireless security
> * Random fun wireless hacks
> * SDR in education
> * Satellite/spacecraft communication
> * Ham radio related topics
> 
> 
> ** Important Dates
> * Submission deadline: 26 December 2021
> * Announcement of selected talks: 31 December 2021
> * (preliminary) Pre-recorded presentation submission deadline: 23 January 2022
> * Conference dates 5 & 6 February 2022 online
> * Free software radio devroom date: Sunday 6 February 2022 online
> 
> In the last years we were always full to the brim with presentations, so if you want to present, please make sure to submit your abstracts soon!
> 
> (It might be possible to get our allotted time extended to Saturday - given enough volunteers and high quality presentations to cover two days, but that's only an option as last resort)
> 
> ** Following steps for accepted talks
> When your talk is accepted, you will be contacted by a deputy who will help you with the pre-recording of your talk. Together you will make sure that the content has the required quality and is stream-ready. When complete, the recording will be located into the streaming system, and Bob's your uncle. 
> 
> Don't forget that you **must** be available during the allocated timeslot of your talk for live Q&A.
> 
> ** Steering Committee
> The track committee consists of:
> 
> * Phil Balister - "Crofton"
> * Derek Kozel - "dkozel"
> * Andrej Rode - "noc0lour"
> * Martin Braun - "mbr0wn"  
> 
> Hope to hear from you soon! And please forward this announcement.
> 
> Cheers
> Andrej
> 
> 
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
