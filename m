Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B60FB840952
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 16:08:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BC1A384599
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 10:08:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706540901; bh=rsGYN+bmEvHhOkeHGGuqOVxbAPi9VEMVXn57ez59Wj8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=idXBJyntPdwWDD8JJuC2o6YMAFvm4ZFAJBMdLsPCWb3V786zpeoiJkSOAadsR1DOZ
	 v6+SnLIZ/8SUxJwccVigWZfg6KyTe5A0SaV5OTURm20Jr8/cexY3pQSCHbt0JBVyzD
	 bRs/e9tiE+U64hfrs0ouwu0G45vtqbzWgImJm4FY3fuNPtEm7myjnQECXyBj5kveav
	 feGm1K9XDi4HaroN0dZG8FzoBGmruFV0KBvdWt0CPOsO1uSM3mWWdghdTMCKSrsJav
	 VNtFtAhdl1DNg1yHJf2P7Pb1aST4QhitMCBzO+ekenIUSQeEy9EYFf2LFYUn7XD/Iq
	 koq0CyGBW4mDQ==
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 3040D384218
	for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 10:07:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="eNLFDGYH";
	dkim-atps=neutral
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3392b045e0aso2328912f8f.2
        for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 07:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1706540875; x=1707145675; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDLSspkzxBPQ3rtIQCq/+2Zs99VOCQfvWhT7Lmv+WE4=;
        b=eNLFDGYHbt/FxkK8APLQTlJJFPO50yXQfjkPX5PwKRYHfmo4Rwx0Do9lgb3X2vCYa3
         OE8CKnfovBHJs5w6PpBpbLv485JG/AY5B++2ZAJEcnEgVoitqjKb9JL4O+2Dj651CULi
         NHRc/TayFwqna220G9VmiHSQMUrSY/PpUtdQIMALHBd9u/dPlqJJM0rRIOEylLFp+G96
         N/+yLRzI5n/2o0F2L6RYsidBGikJzblCtbgu2CQFmnEKw/x3T+H7EG7Q5gB9SvdXwfQx
         8JhdFAFL93cdMW1/WTrL5MiR5mDETdERCjecsLDrGZ8QvNObXQeuL6IlGfjlVRH+oR+l
         //eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706540875; x=1707145675;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DDLSspkzxBPQ3rtIQCq/+2Zs99VOCQfvWhT7Lmv+WE4=;
        b=YRsPtm6SqTuqn1J3EYXmp62JeB/kzhGc0mSe1IwPPSfa/RJTpMN7bwA8DTJL+DWFbI
         +3p2gypOW4pcjla8kAuh6cfeB+F2CniC0EvR+b8yTtY+EwBQwSTs2F7aUvOxvmNNYLdx
         bvIb2yu20tVYfxZCuc05q519PWoO2j8hhbzkkeiOVajj0q3SCZTrrTRNyH1omuMhQuRY
         wzQzCObuU1ePgNRJw0Mn/upQjmSr6cWensgfEFmgbJZueTzUlZmoP/6i2yBh07WT+8FL
         RteybDbUWXQS/Tn0yrVkHOKbzEhytvYz0bD7kZDncK8JsIbCK8QTFTdttVLptcvOMUEE
         j1ug==
X-Gm-Message-State: AOJu0YwUIKQ0uqevWEfxnfMGqca6vioZfL1IjYJpZTHJrc9duUC6rw+y
	Pas+D2BSD+rfaXkfmr4dbpDz0UeNVwqEeZ+HpQz+un/3S3NmJmnhuCoSZFMixl1wluXlugv+MVr
	F8fE=
X-Google-Smtp-Source: AGHT+IEvhKxmlnWWx/wdvTMctp6HvQVUgUjZWibWNVz6BD/MhmhVMigKlDuD2EPj46m94eQ5Zjitxw==
X-Received: by 2002:a5d:6090:0:b0:33a:efa3:1fc0 with SMTP id w16-20020a5d6090000000b0033aefa31fc0mr1913925wrt.55.1706540874643;
        Mon, 29 Jan 2024 07:07:54 -0800 (PST)
Received: from ?IPV6:2001:16b8:cc76:8d00:10fc:1619:bea3:90d1? ([2001:16b8:cc76:8d00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id ce6-20020a5d5e06000000b0033af3a43e91sm1612129wrb.46.2024.01.29.07.07.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 07:07:53 -0800 (PST)
Message-ID: <7660ac8c-cfc5-4449-9fc2-6144b5cd5232@ettus.com>
Date: Mon, 29 Jan 2024 16:07:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com,
 "Jeyakumar K-[BL.EN.P2VLD22009]" <bl.en.p2vld22009@bl.students.amrita.edu>
References: <MA0PR01MB6780B25DE4697BF624D3A717B67E2@MA0PR01MB6780.INDPRD01.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <MA0PR01MB6780B25DE4697BF624D3A717B67E2@MA0PR01MB6780.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: 4OJHT47IKN63Z4SGZ56UZ4GLCZ6EC7NO
X-Message-ID-Hash: 4OJHT47IKN63Z4SGZ56UZ4GLCZ6EC7NO
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Matlab files 29th Jan
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4OJHT47IKN63Z4SGZ56UZ4GLCZ6EC7NO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8553080186563163050=="

This is a multi-part message in MIME format.
--===============8553080186563163050==
Content-Type: multipart/alternative;
 boundary="------------0JJrfv47YVwesE0bgB8bO7RB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0JJrfv47YVwesE0bgB8bO7RB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jeyakumar,


nice to hear from you again! But: I'm almost certain you didn't mean to send your homework 
to a couple hundred people :)


Best regards,
Marcus


On 29.01.24 11:05, Jeyakumar K-[BL.EN.P2VLD22009] via USRP-users wrote:
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------0JJrfv47YVwesE0bgB8bO7RB
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Jeyakumar,</p>
    <p><br>
    </p>
    <p>nice to hear from you again! But: I'm almost certain you didn't
      mean to send your homework to a couple hundred people :)</p>
    <p><br>
    </p>
    <p>Best regards,<br>
      Marcus</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 29.01.24 11:05, Jeyakumar
      K-[BL.EN.P2VLD22009] via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:MA0PR01MB6780B25DE4697BF624D3A717B67E2@MA0PR01MB6780.INDPRD01.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class="elementToProof">
        <br>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------0JJrfv47YVwesE0bgB8bO7RB--

--===============8553080186563163050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8553080186563163050==--
