Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6A55A3DCF
	for <lists+usrp-users@lfdr.de>; Sun, 28 Aug 2022 15:34:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29B8D384D1F
	for <lists+usrp-users@lfdr.de>; Sun, 28 Aug 2022 09:34:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661693675; bh=uSe/eCbLlDjeLOi0fR9TMcm8RlXSWmsr5X3vvTCXFPs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bqwm4fYuq19cjuCVryJTuFXJCVNKaO7uLovx+CpZntx8k1lPbolWLVIXKA7Ehgzon
	 kDLD4lZaqN5K+AIOBkUURmBv1yqp52OE3tdTlTVWoj2ZJRwXya7RLQwXm1yhrzTSEI
	 nlQyXe+G7dJ9cM6fRoV1cdkdyVNmW3z8H4puIN+ey1H2/s3HSKCPSq01Xte3fRDwX2
	 MIQZ01RFZa0GWR5PERcXN0T47g7xJzFo5xfCVvoXhBzMeJxONDXtcC4K4n0dsUfEye
	 7ACBIUZS6fX0WjHQgXymTpImolGyHmn8ctcImdAnBHUSknZsZrtUTCPwXJtQdG/mbh
	 TjweIG9hD/TSQ==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F97B387664
	for <usrp-users@lists.ettus.com>; Sun, 28 Aug 2022 09:33:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="igBZ+o2z";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id c20so4468651qtw.8
        for <usrp-users@lists.ettus.com>; Sun, 28 Aug 2022 06:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=PR0deNlY5Ox/Hauv3YS/BWp+VLdHV+L4R8L2fIAYvDc=;
        b=igBZ+o2zi7P7n1moTfiVQmkwblAASig7OkCEoarcGaxVNWetL0JUDOTD3hjgjDxy/t
         Z420ZjnFx3kTdqD98mFkSOsE4gxP/sfoUz8uef/Srl5eaFdal9UXPW4zWh1qTeG9CIqy
         iXH1DUyKo0lh1nr/vPfzaih+M9vdDKVbb8ibpS2saCeW3Nx/9il4ycrwgmdOVmu7sSOe
         pEOeKqG7bRn9qZt6bncluRUcutnvngFvoVUXcglfxCD2UpV1afpH/1uSlwDFuc46PpCE
         vHkCjidlp9FKQ7J3TeOdFWLoIscuAh021hXbgh5rHfEuvqZB03CuX2CY8V3uG2DrgvRm
         9D4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=PR0deNlY5Ox/Hauv3YS/BWp+VLdHV+L4R8L2fIAYvDc=;
        b=QBdp7XpKCdNWl9mV/jU4HSEQ5rCV6vyzpgI7mmt8RlYLyoTLLU1QgQBJ0XpMVM0hc3
         /eIWr7yKRoWPvQLyPTc8Q4yaw3zKsKHxoTdvdjANlFaMypXOj6hTA+gxYjveS8ZNONyu
         /YC0QOW/ryLi1X0/MvjdVdkSZuVOblcl4ilQ7MHeYi0pfuijO8D7+ATIqf4X50oEqG2B
         OezZr7sbwZrVyShizhuuL4l5k/fisa8YgLjUSUW1D5SX14QOe9NEkVBaoujYxXwRMpnl
         7s1SFjpTJ64c+XCA5+KBdPyHHab0gXss1V8D5gidtV1+cqmw0ANwfm5zPHGSwI7rm7xA
         lQag==
X-Gm-Message-State: ACgBeo03wGLTfDwhLGobu5EM/qK9lJCFHihI1hNp2re3MqJEmxt2/JqN
	/gYbwGCN+GeBIp3JSU8CBc0QbPoQk4w=
X-Google-Smtp-Source: AA6agR441spN537aKvSCzlR+fpOFrpDZWUuXzzYBOih/WwHM85RkUtOQs9Cw8RmN2CrlmoKpYgmX/g==
X-Received: by 2002:a05:622a:24c:b0:343:7d3b:4953 with SMTP id c12-20020a05622a024c00b003437d3b4953mr6786996qtx.562.1661693591486;
        Sun, 28 Aug 2022 06:33:11 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id bs31-20020a05620a471f00b006bb83c2be40sm3976440qkb.59.2022.08.28.06.33.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Aug 2022 06:33:10 -0700 (PDT)
Message-ID: <bb79d146-ffde-70fe-bdf9-73ff2f5502f1@gmail.com>
Date: Sun, 28 Aug 2022 09:33:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "McKnight, Ryan" <rm249114@ohio.edu>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CH0PR01MB7050582855A91C6BFD950630B5739@CH0PR01MB7050.prod.exchangelabs.com>
 <561e8c98-42b9-8059-e1d8-84e8695cdd60@gmail.com>
 <CH0PR01MB70503D5C2F62ADD6FAC5124AB5729@CH0PR01MB7050.prod.exchangelabs.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CH0PR01MB70503D5C2F62ADD6FAC5124AB5729@CH0PR01MB7050.prod.exchangelabs.com>
Message-ID-Hash: 4XX4QTOKTEYLN4JX632QIYE4PD6GQ757
X-Message-ID-Hash: 4XX4QTOKTEYLN4JX632QIYE4PD6GQ757
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [External] Re: N210 GPSDO time synchronization issues
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4XX4QTOKTEYLN4JX632QIYE4PD6GQ757/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-08-24 21:22, McKnight, Ryan wrote:
> Thanks for the reply Marcus,
>
> I hadn't encountered an issue with waiting only 5 seconds for GPS lock yet since I usually keep my device powered up and connected to the GPS feed, but thanks for pointing that out so I can fix it.
>
> I just tested my code again after reverting to version 3.15 of UHD (and Python version 3.7 for good measure), and still encountered the same issue. Looks like we purchased this N210 along with the GPSDO kit in October of 2019, so it's not too terribly new.
>
> Any further suggestions would be appreciated, I'll keep investigating in the meantime.
>
> Best,
> Ryan
>
> (sorry for double message, I forgot to click reply-all the first time...)
Is this your only N210? Can you compare it against another one?

The only thing I can think of is that the 10MHz clock coming out of the 
GPSDO is flaky or not connected at all.


>
> -----Original Message-----
> From: Marcus D. Leech <patchvonbraun@gmail.com>
> Sent: Wednesday, August 24, 2022 9:01 PM
> To: usrp-users@lists.ettus.com
> Subject: [External] [USRP-users] Re: N210 GPSDO time synchronization issues
>
> Use caution with links and attachments.
>
> On 2022-08-24 19:38, McKnight, Ryan wrote:
>> I am learning to use the GPSDO capability on the N210 and I am having a strange issue, seemingly related to this previous thread:
>>
>> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.
>> mail-archive.com%2Fusrp-users%40lists.ettus.com%2Fmsg05997.html&amp;da
>> ta=05%7C01%7Crm249114%40ohio.edu%7C1a14750ca34247b3d40a08da86355e50%7C
>> f3308007477c4a70888934611817c55a%7C0%7C0%7C637969861033603308%7CUnknow
>> n%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLC
>> JXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=SBiUMueq3kqvDX2HznlmYLJ1Ex%2BmN
>> suW6blk3FDkYbk%3D&amp;reserved=0
>>
>> Here is a Python snippet that demonstrates the issue:
>>
>> import sys
>> import time
>> import uhd
>>
>> usrp = uhd.usrp.MultiUSRP("serial=30AB08E")
>> usrp.set_rx_rate(50e6, 0)
>> usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(91.3e6), 0)
>> usrp.set_rx_gain(31.5, 0) usrp.set_rx_antenna("RX2", 0)
>> usrp.set_clock_source("gpsdo")
>> usrp.set_time_source("gpsdo")
>>
>> tries = 0
>> while tries < 5:
>>       gpsdo_lock = usrp.get_mboard_sensor("gps_locked").to_bool()
>>       if gpsdo_lock:
>>           print('GPSDO locked')
>>           break
>>       else:
>>           time.sleep(1)
>>           tries += 1
>>
>> if not gpsdo_lock:
>>       print('[ERROR] gpsdo failed to lock within 5 seconds')
>>       sys.exit(1)
>>
>> tries = 0
>> while tries < 5:
>>       ref_lock = usrp.get_mboard_sensor("ref_locked").to_bool()
>>       if ref_lock:
>>           print('ref locked')
>>           break
>>       else:
>>           time.sleep(1)
>>           tries += 1
>>
>> if not ref_lock:
>>       print('[ERROR] USRP failed to lock on to gpsdo reference within 5 seconds')
>>       sys.exit(1)
>>
>> usrp.set_time_next_pps(uhd.libpyuhd.types.time_spec(0.0))
>>
>> while True:
>>       print(usrp.get_time_last_pps().get_real_secs())
>>       time.sleep(1)
>>
>> I would expect this to print out 0, 1, 2, 3 etc. without drifting at all, but I am actually seeing pps times that slowly drift. Here is an example output:
>>
>> [INFO] [UHD] linux; GNU C++ version 10.3.0; Boost_107400;
>> UHD_4.2.0.HEAD-release [INFO] [USRP2] Opening a USRP2/N-Series device...
>> [INFO] [USRP2] Current recv frame size: 1472 bytes [INFO] [USRP2]
>> Current send frame size: 1472 bytes [INFO] [USRP2] Detecting internal
>> GPSDO....
>> [INFO] [GPS] Found an internal GPSDO: Jackson-Labs, FireFly , Firmware
>> Rev 0.929 [INFO] [USRP2] Setting references to the internal GPSDO
>> GPSDO locked ref locked
>> 55.99999568
>> 56.99999568
>> 0.99999998
>> 1.9999999800000001
>> 2.99999998
>> 3.99999998
>> 4.99999998
>> 5.99999998
>> 6.99999998
>> 7.99999998
>> 8.99999998
>> 9.99999998
>> 10.99999998
>> 11.99999998
>> 12.99999998
>> 13.99999998
>> 14.99999998
>> 15.99999998
>> 16.99999998
>> 17.99999998
>> 18.99999998
>> 19.99999998
>> 20.99999998
>> 21.99999998
>> 22.99999998
>> 23.99999998
>> 24.99999998
>> 25.99999998
>> 26.99999998
>> 27.99999998
>> 28.99999998
>> 29.99999998
>> 30.99999998
>> 31.99999998
>> 32.99999998
>> 33.99999998
>> 34.99999998
>> 35.99999998
>> 36.99999998
>> 37.99999998
>> 38.99999998
>> 39.99999998
>> 40.99999998
>> 41.99999998
>> 42.99999998
>> 43.99999998
>> 44.99999998
>> 45.99999998
>> 46.99999998
>> 47.99999998
>> 48.99999998
>> 49.99999998
>> 50.99999998
>> 51.99999998
>> 52.99999998
>> 53.99999998
>> 54.99999998
>> 55.99999998
>> 56.99999998
>> 57.99999843
>> 58.99999843
>> 59.99999843
>> ...
>>
>> Any ideas as to what I'm doing wrong, or if this is a bug in UHD related to the bug in the other thread that I linked? I am using UHD version 4.2.0.
>>
>> Thanks,
>> Ryan
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe
>> send an email to usrp-users-leave@lists.ettus.com
> I can't immediately tell what's going on here, but a couple of comments:
>
> Expecting to get "gps_locked" within 5 seconds if the device has recently powered-up is not realistic.  It can take 10s of minutes
>     for it to achieve lock from a cold start.
>
> The code for the N210 hasn't changed in several years as far as I know.
> You might try reverted to 3.15 to see if this changes
>     anything, but I rather doubt it.  Is this a new N210, or one that has been around for a few years?  [Just trying to see if maybe
>     there's a batch of recent FireFly GPSDOs that are wonky...]
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
