Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C57304D3136
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 15:45:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A82CC384E6F
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 09:45:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cvaHwRqJ";
	dkim-atps=neutral
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C76D2384DDD
	for <usrp-users@lists.ettus.com>; Wed,  9 Mar 2022 09:44:47 -0500 (EST)
Received: by mail-qv1-f52.google.com with SMTP id b12so2138163qvk.1
        for <usrp-users@lists.ettus.com>; Wed, 09 Mar 2022 06:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=mshet3iBjSQXMPSlLkPbscvRTCI/pf92KVLHA/i491Y=;
        b=cvaHwRqJgZ8VH7Gdi4MdUXLQ2mimv9ZwfgIRoftOlswNcZFo30KDHGy0jYaoiWLv81
         bxxZlJteA9jHuoicnowWiv9gMgBjQiaGdMO5UfzyRzHER4xbotGwFD9KD+WgPq1RQ5og
         OYwuD7B3fzVHyizTVmlz3a2+DV5t6sKHnV3AWewTFy7qjjNn6bzhSjevDy0JvkZg6JWK
         cb8BpiT7omSkt3s4Z9crf/DmDrO7XK8IFqsQk+BnVUYiZ7eC+OcJV7iElOGhd2l1UNy1
         cb6FUb7qasDwnj8lbjJf3goGBm2k4/zLoWjumfiBnIq9m1VjDXFE6oML/tgwWLnD37HV
         mDGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=mshet3iBjSQXMPSlLkPbscvRTCI/pf92KVLHA/i491Y=;
        b=Pi5ZZfwbcfaQjWgR1BbFaSlg+SYR8ZOQhFmNuw4wo1hTHNoS8B9e/sAafwrKVrLYGB
         o/jH7KgOtLjA1+bdQo1fZEpHmn5DrYLdkRFF3IJ9bNvtvVZLbDxj+9pIkN+pOAYjQDEw
         XFvd1x/IERXyYxSfl8ROqixq3aU7xT9Bxe8arqCw+ndtsA5okfucWbf7Zo7pyKJWAvnA
         B5i4rO6uYV0uwdRMdDF76z5IMVD0kHgOM+0Rm6GQLloPahGbHv2gFN87vfu5vumd4Io9
         eZb49D3S2ZexG3tLR2PeQ8pBN8Ngpqgfjtzkr4GsaZo0eTVVtSTjKq2q6Wcael+YfIPM
         5pJA==
X-Gm-Message-State: AOAM53309HddW6Ka1krBYVOmOpfrK/FgwWzOA+xyoeqY/krruagWx8hY
	RwHz6806ocIT3gkQvb5v0O/wdpKB025H9Q==
X-Google-Smtp-Source: ABdhPJx8/tZw5EO8m505EahHZLTOcrioCrsUEC2Q0BC4RimTosz/W1O1BgLWFRh8BewwIeonJMZUzg==
X-Received: by 2002:a05:6214:d81:b0:435:50b6:1163 with SMTP id e1-20020a0562140d8100b0043550b61163mr16545995qve.118.1646837087141;
        Wed, 09 Mar 2022 06:44:47 -0800 (PST)
Received: from [192.168.2.147] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v9-20020a05622a144900b002dfedb4dccasm1373456qtx.66.2022.03.09.06.44.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Mar 2022 06:44:46 -0800 (PST)
Message-ID: <eadede9a-80ac-2d21-1d8f-2176de0dcb8b@gmail.com>
Date: Wed, 9 Mar 2022 09:44:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
References: <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com>
 <AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: 2546CSXUNQMUBWEVYZJDN734HE7YQPEY
X-Message-ID-Hash: 2546CSXUNQMUBWEVYZJDN734HE7YQPEY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2546CSXUNQMUBWEVYZJDN734HE7YQPEY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5185088363804973100=="

This is a multi-part message in MIME format.
--===============5185088363804973100==
Content-Type: multipart/alternative;
 boundary="------------J0p3LJH0ekz2Fcl2TgOnLbT1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------J0p3LJH0ekz2Fcl2TgOnLbT1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-03-09 04:34, Tobias Kronauer wrote:
> If the GPS light is the light left to the GPS ANT port, then yes it it 
> shining green.
>
> Currently, I have two GPS antennas connected to two X410. The GPS 
> antenna has multiple outputs, I use the "GPS" output and screw it to 
> the SMA connector. Then I probe the module pins (and call the 
> `./sync_to_gps` example).
>
> We use a Poynting A-Puck-0005-V1-01 antenna, in case it helps.
>
> ------------------------------------------------------------------------
>
Could you share the complete output of "sync_to_gps" ?


--------------J0p3LJH0ekz2Fcl2TgOnLbT1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-03-09 04:34, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        If the GPS light is the light left to the GPS ANT port, then yes
        it it shining green.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        Currently, I have two GPS antennas connected to two X410. The
        GPS antenna has multiple outputs, I use the "GPS" output and
        screw it to the SMA connector. Then I probe the module pins (and
        call the `./sync_to_gps` example).</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class="elementToProof">
        We use a Poynting A-Puck-0005-V1-01 antenna, in case it helps.<br>
      </div>
      <div>
        <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <br>
        </div>
        <hr tabindex="-1" style="display:inline-block; width:98%"><br>
      </div>
    </blockquote>
    Could you share the complete output of "sync_to_gps" ?<br>
    <br>
    <br>
  </body>
</html>

--------------J0p3LJH0ekz2Fcl2TgOnLbT1--

--===============5185088363804973100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5185088363804973100==--
