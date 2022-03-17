Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 697384DC7BF
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 14:42:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DE5138531D
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 09:42:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HP7tajgk";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 331CA384C87
	for <usrp-users@lists.ettus.com>; Thu, 17 Mar 2022 09:41:04 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id 85so4316382qkm.9
        for <usrp-users@lists.ettus.com>; Thu, 17 Mar 2022 06:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=9TTYqgjH+hq74X62BOVa7tBFJN0P/C8CSefOmXlRoZ0=;
        b=HP7tajgk5x++NLbJJtqkpb2r6vwKIEWCh3TP2cdfUkpRhB6DmVeHlLqv/4uCG8n1lf
         xi8g5m+Bii2/eJnit6DKtxM/eK6zSY63LNf2R4lX+ko15ajYS9q4bPTA51PV1bt0NgT8
         toz2mOQKJfRt4w69b8aOCQin9NeQ89NdG4eW5TOkcjOZ76KUEUSaW62h/KTflGvEgTwh
         vdM2S7rOy8fJKYu9iHoQL2TJUEzUDy0KuAtvOLERJd3bnLASAifkjb1Cajw2OsEmOM8w
         suG9sF4OSxF4J8WvEoorTBMuTZvRScN+QNp2Q8U12WD8PlvdzKgFg29vBBTBzkqBgPUa
         Y9rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=9TTYqgjH+hq74X62BOVa7tBFJN0P/C8CSefOmXlRoZ0=;
        b=M7UqOdWhxH1c5YF9AAxfXlfJnZknrbg6PLf9ilwVa7C0bLrQwwrf81cyIGJEktZf4N
         OjMhXsGXJrlsrFzP5exgiaOrf7QTeP5MxjnCQO8Ec3mohDNgmF5KuivUqQu4WMjbZbzv
         wXD8qgrUcNbIXpNapuAHmAWTUXDwUj84yCdq3nIa/N/C+VL4NDWTogwMgWanRI/vDULP
         5yaj1yOexcyKG9VPz79hPtJPc+ezG4OBmpCaR80dqUHLYrQIBK7H3RMri74M+UjW9dlo
         x+SVu1Q4btj/3JB6br7zeEbrKi+qugWL/W9L59ehfOEEehGtbqKrsiKp4+6I7mtHMKn+
         Z3YA==
X-Gm-Message-State: AOAM530lIHabf8f1S3WQvRwxCXiCqkWq8c6DOURiFVcLo0fUpKNTVU3d
	oZqZ+4NjoD7jIsSZBWlrdOsWVob3aAA=
X-Google-Smtp-Source: ABdhPJzdO3I43mRhiwcUFKuWxUWeHV5sYCGpW/C+cSVKoNgXYVdTVlbhXeYJMfP+v3VBxBTiGzznKw==
X-Received: by 2002:a05:620a:404b:b0:67d:ca17:21a with SMTP id i11-20020a05620a404b00b0067dca17021amr2738138qko.676.1647524463319;
        Thu, 17 Mar 2022 06:41:03 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t7-20020a05622a180700b002e0ccf0aa49sm3728338qtc.62.2022.03.17.06.41.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 06:41:02 -0700 (PDT)
Message-ID: <0c95902c-6c5b-0dfd-6bd7-9a2cdf99a9ea@gmail.com>
Date: Thu, 17 Mar 2022 09:41:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM8P250MB010739467356827A8617AFFB9B129@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P250MB010739467356827A8617AFFB9B129@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: MRKWVTT2BOLVMNNA7V6JGAKTHIBLBME7
X-Message-ID-Hash: MRKWVTT2BOLVMNNA7V6JGAKTHIBLBME7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MRKWVTT2BOLVMNNA7V6JGAKTHIBLBME7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6549316951781653578=="

This is a multi-part message in MIME format.
--===============6549316951781653578==
Content-Type: multipart/alternative;
 boundary="------------5UYM94h7TQ2dxp5jg7w1B0UR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5UYM94h7TQ2dxp5jg7w1B0UR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-03-17 06:24, Tobias Kronauer wrote:
> Hi altogether,
>
> I have a rather dumb question: how can I change the hostname of the 
> USRP? According to the docs (being the standard way of changing host 
> names in general), I changed the file /etc/hostname and rebooted. 
> However, after rebooting, the content of /etc/hostname is changed to 
> its defaults.... Using hostname or hostnamectl in the command line 
> does not work either. Can you help me on that?
>
> I am using a X410.
>
> Thanks in advance,
> Tobias
>
>
>
> *Barkhausen Institut*
> www.barkhauseninstitut.org
>
IF it's setup for DHCP, it's probably that you're getting your hostname 
from the DHCP server?


--------------5UYM94h7TQ2dxp5jg7w1B0UR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-03-17 06:24, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:AM8P250MB010739467356827A8617AFFB9B129@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        Hi altogether,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        I have a rather dumb question: how can I change the hostname of
        the USRP? According to the docs (being the standard way of
        changing host names in general), I changed the file
        /etc/hostname and rebooted. However, after rebooting, the
        content of /etc/hostname is changed to its defaults.... Using
        hostname or hostnamectl in the command line does not work
        either. Can you help me on that?</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        I am using a X410.<br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        Thanks in advance,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        Tobias<br>
      </div>
      <div>
        <p style="font-size: 11pt; font-family: Calibri, sans-serif,
          serif, &quot;EmojiFont&quot;; margin: 0px;">
          <br>
          <br>
          <b>Barkhausen Institut</b> <br>
          <a class="moz-txt-link-abbreviated" href="http://www.barkhauseninstitut.org">www.barkhauseninstitut.org</a> <br>
        </p>
      </div>
    </blockquote>
    IF it's setup for DHCP, it's probably that you're getting your
    hostname from the DHCP server?<br>
    <br>
    <br>
  </body>
</html>

--------------5UYM94h7TQ2dxp5jg7w1B0UR--

--===============6549316951781653578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6549316951781653578==--
