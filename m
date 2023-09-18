Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A71A37A4A89
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 15:17:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 991F6385A57
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 09:17:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695043045; bh=LeuTD/7WK6PpW51lRCa8qlnPkqKs1JVt4RUKjYlhb5c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qoUD6Hkn5oaDIDM/ET/rF6l5zOc/nu7ENdQoRQCZSoGCyuk60iYm0LArF2bCMhDO4
	 kPSSXJaBrGVthKDUph+fU/VOqUCMAM+4BWP6OSYZSRwfupJw0J21Ms8mMAZ6w380Id
	 2FGrqvjab6JuiK2For40qn51Z/Do3C/xxXQ3ZTxgOeoKR83M7b96FHiyG5wrMip1wU
	 NrwQPtcCwbT5fiLM5EPJcLFHwnYwZ8luKNDztBtVbZlYYPfXh6hhj0ZG30XvmxgHC+
	 Wadda4gzBNhbfTimts5UBKhAwNQiH5mwNvyjc4VDW7LIDYX21vuGypsVJrOrw0QMZ0
	 FG/qDDuZO+kdw==
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	by mm2.emwd.com (Postfix) with ESMTPS id A5757385A47
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 09:17:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fk58hwRD";
	dkim-atps=neutral
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5733bcf6eb6so2331272eaf.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 06:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695043029; x=1695647829; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Kq2SVdNeOLOMYreiGEBax5IiHEYMXg5R9jkSW87okE=;
        b=fk58hwRDkAoKhn1lqs7NZMA3xosKbmIWv/Tm211yLjL1E7vkV01YRW+GC5Q6+m9t/Q
         rnJJdjnQWkp4LohPGzXdVIMWiiXVIcJOsyIoVIdNgPr+l/AEuAT3UEQzsYoI65XWoBuB
         8ZE+lS7oe9hJHx6KKgaXutCMZ6PM7Q+dMd7UP3ez4TVeqNClRqN/3yshtHDsvQfhpZtj
         gVPYbBezT+lU2cvnN/EW4yauyG4V3/cd3ACITqYsSpuQMkF7pXGoeoeBgs6jzsPB3ovf
         rohsFNw3DBcvRP1+qrQK0fWiPcZ7mnMxTSuqO0uXOxMuepJf+iunHGUMxq1beIsh1+yD
         vkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695043029; x=1695647829;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Kq2SVdNeOLOMYreiGEBax5IiHEYMXg5R9jkSW87okE=;
        b=F7k25K1CvBg+Qyr9Bigh3VsA0cMQVWWlDlA1dsirIhER8yB3NpPUHQn6OWaR5zHJen
         C3/OIoQaeRY3+6VG/oL/OQZ2mNYDSRvGOoKmRTsvCiwi3aW4cD6uVmVC6Ov6+1HM9epw
         U3Fahz95hVxt+vSq++kMv8ta6oUghDqQRwdvdKX92FRPP6BW67JAGhpbHgR0XMaeZAjH
         FAZPoqMO45YvaRhejsatErqLLJ1X1bVst3YBUoCuyiJ1Mqx4LlpxSth8BvHfwJ+3g/I0
         B+/9ipNY2+6rEzHA7om5oTas4nQxHmmp69tr+QWlYLsPfpYi1mFEwsoXvWrccciNoqw1
         ch7A==
X-Gm-Message-State: AOJu0YwUKOTGLrIhlZ2ogOEnBajWa3yx1j7kpkY0KYy/z4Qn6cBE0SxC
	YdsAVjQLU1jOXXizyxjEeCwwIMjxSFh3jw==
X-Google-Smtp-Source: AGHT+IGPDM+mzEc5E8rymzTfJlHgEhXpen61WH6GYw9rgT/u2VvnjAZ2ouonNWc1uSAl79/iJ+VtTQ==
X-Received: by 2002:a05:6358:290b:b0:142:d097:b14a with SMTP id y11-20020a056358290b00b00142d097b14amr6634755rwb.13.1695043028604;
        Mon, 18 Sep 2023 06:17:08 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id j2-20020a0cae82000000b0064c9f754794sm3479386qvd.86.2023.09.18.06.17.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 06:17:08 -0700 (PDT)
Message-ID: <23ef8b19-89ad-2edb-f155-504e20fb9e5c@gmail.com>
Date: Mon, 18 Sep 2023 09:17:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <TCOxjy9YsDBIq4vAibs4jsDSIdi31S1jUGBAmYEls@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <TCOxjy9YsDBIq4vAibs4jsDSIdi31S1jUGBAmYEls@lists.ettus.com>
Message-ID-Hash: MI25DDIAHP3MP37BJGJOPL2BAWUSBHYX
X-Message-ID-Hash: MI25DDIAHP3MP37BJGJOPL2BAWUSBHYX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay sample example in GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MI25DDIAHP3MP37BJGJOPL2BAWUSBHYX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 18/09/2023 00:12, h57jafari@gmail.com wrote:
>
> Hi,
>
> Can anyone share a sample RFNoC Replay example in GNU Radio to 
> replay/transmit IQ samples from file. Thank you.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
You might want to also copy the discuss-gnuradio mailng list.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
