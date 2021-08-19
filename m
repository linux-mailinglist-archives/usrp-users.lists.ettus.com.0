Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A987C3F1F41
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 19:38:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E00D3841F5
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 13:38:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LOy/Ph6S";
	dkim-atps=neutral
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id E6A2B383E0A
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 13:37:54 -0400 (EDT)
Received: by mail-qv1-f50.google.com with SMTP id jz1so4006448qvb.13
        for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 10:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=reIiFGC1CjCnTdKOAwaNXWrr+b/nkNRZlagKU0SAAuA=;
        b=LOy/Ph6SzcwhmUya2YXZjeMoTk1ta0rjltgmAjojjm776IupdC3MmIoP/N7lqVnraE
         +Ai0sySnjm48887nKFlfaiw0Vu2spI9o7s1J3hbydDfflbKDgXPtViG1fzmrOCBLPGA2
         ERrZeyxtspHZSJaNMYkvb7YjhDYNViCHA1qbC2+uR9Y3gK+t1WQkc4rNE+MTlQliCvba
         vC5GxI2KQWVq0ZlhA6jniUUlLf/JneL5Kg1zysAtMRp/Gf4GJCNnhNBKBsXSoOnYKMUY
         beD9bM7tsgwDsHzFtO06utLTyO36h8w8vEBOh4TdSWHDo+c1vav1mX6D4kkeMCO0Oxv/
         dG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=reIiFGC1CjCnTdKOAwaNXWrr+b/nkNRZlagKU0SAAuA=;
        b=R/MqqnQsQd1CXsVYj6g6Ndw8PlXLD2aCNGNG/IrDbmdPFLZO1dvTMeJM0/NljqoQlc
         1wuKfg+5xn7TppVU7XHw64gG7M9uw3zJN/tAwIi8WjSbGwRs0rHOh/1rwv4XtqrG2+ll
         jGM0nxGiuqwngsrcbm6WkdAvhQ8OEjiK0auMEnIlURUzlq8vseOgisriJ+Opu5r/L/kb
         Gffi49SJyzScmevckgMQBJgzifCxcXn9LDY7iSU32UfXDEQ3TSjIni1ssXfSNQCXCzmY
         GzPp97k4BjgdZhi5SVgGYcxuXLiaMAcxtSIhtCl8Hrj0IqbdS2QSr89NtdStxTefyGOd
         mEvA==
X-Gm-Message-State: AOAM533/YLnL8XBn+HDqy9orG6C9WZiFdP0PossnrSBN07Lw7XkFvffQ
	ewWqHG1UxWVEOiRjg4mBgZHwQLN+yCvm9A==
X-Google-Smtp-Source: ABdhPJxyJv7aweHbYgGCDK3+Hkz/Xn/ZxpkAgc4u20zDRRFnUkFyCR+LrLQCupvL8ShIfZpkmqypiw==
X-Received: by 2002:a05:6214:1142:: with SMTP id b2mr15875894qvt.0.1629394674165;
        Thu, 19 Aug 2021 10:37:54 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id a8sm1514549qtx.39.2021.08.19.10.37.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 10:37:53 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <5eJaklD329xYwo6OhHVfW6sSWNzagNR3P5DQaqVjwl0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <ebccb84b-12f4-3000-3002-202ba140bd12@gmail.com>
Date: Thu, 19 Aug 2021 13:37:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5eJaklD329xYwo6OhHVfW6sSWNzagNR3P5DQaqVjwl0@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: JVSRMAYZ7NGMHMK2RZ3SKNEDH4FVEOJQ
X-Message-ID-Hash: JVSRMAYZ7NGMHMK2RZ3SKNEDH4FVEOJQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 GPIO Control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JVSRMAYZ7NGMHMK2RZ3SKNEDH4FVEOJQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2021-08-19 11:32 a.m., vld.popovici@gmail.com wrote:
>
> Hello,
>
> I am trying to get the GPIO header (J504) working on a USRP B210 for 
> power amplifier control in GNURadio. It appears this is possible based 
> on the documentation, but I am not having any success.
>
> According to this user, GPIO support for the USRP B210 was added in 
> UHD 3.9: 
> https://lists.gnu.org/archive/html/discuss-gnuradio/2015-08/msg00418.html
>
> However, I am running UHD 3.15, and I am getting the same error that 
> user was getting on UHD 3.8 when I call 
> self.uhd_usrp_sink_0.set_gpio_attr("TXA", "ATR_TX", 1, 0x10, 0):
>
> RuntimeError: LookupError: Path not found in tree: 
> /mboards/0/dboards/A/iface
>
> I added print(self.uhd_usrp_sink_0.get_gpio_banks(0)) above the line 
> causing the runtime error, and the three banks listed were ('FP0', 
> 'RXA', 'TXA'). It appears that FP0 is the only bank that does not 
> raise this runtime error. I set all pins on this bank to ATR_TX by 
> setting the mask to 0xFFFFFFFF, however, none of the pins on the J504 
> header appear to change state when the USRP changes state from 
> transmit to receive. Does this bank actually correspond to any 
> physical pins on the B210, or is it just internal to the FPGA?
>
> Is it possible this is a regression? If so, which version of UHD 
> should I use for GPIO control on the B210 until this is fixed? I would 
> rather not roll back all the way to version 3.9 from 2015.
>
> Thanks.
>
The B2xx have the same GPIO API as X3XX devices, so you might consult 
the example code in:

uhd/host/examples/gpio.cpp


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
