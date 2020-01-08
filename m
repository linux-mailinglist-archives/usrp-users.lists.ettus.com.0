Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBCE134DC7
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 21:42:02 +0100 (CET)
Received: from [::1] (port=35166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipI9L-0002nA-7z; Wed, 08 Jan 2020 15:41:55 -0500
Received: from mail-qk1-f181.google.com ([209.85.222.181]:37759)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ipI9H-0002eV-5r
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 15:41:51 -0500
Received: by mail-qk1-f181.google.com with SMTP id 21so3957783qky.4
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 12:41:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=9B/IslYvluMpUz0+CyPX+lzVH3r+g6gk6Qoh24db3zw=;
 b=jKu32FCFBzcSeTATkhZQeC3vLutTjdpkj+PymqZetvTGn6jUZpurFz6o1s0B/t5EIJ
 j/2U8AasH47z/aFm3PyxOf5xTELyE2OC2CngCV/X96y3IxUhIj34Iw83/Jz259Bb/k/g
 sdLxT2aiYO/aY+BEgPaFeUBiFpkgbhI+6ffNwknrxsSNLwr1NY8lr/ESkiWr2pbYWDD1
 S9Skj1P8WNuJjJXMjjdwBAgDGSlIWbpyJ+sVqaqGjUlTpIlFpJg6dCRpP2O0UQb+HYy4
 1aPsxijykQArzthOv4AiNavhR+30alDZBSH+efTLVoPWK5XKodrDuNcDA76cibS9hHUO
 Uy3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=9B/IslYvluMpUz0+CyPX+lzVH3r+g6gk6Qoh24db3zw=;
 b=Ml5cVc1YNevN7tEkMY9pRYSDs7RfwMpVvORCEuRgCFdR0i8F5Ff6pOD5xCXmpkWS2a
 576yzbb5C82EdcA/VMF9q/7HPV/Tq3mj6kiBa7tiVfBKXBWetoyLmjt9GA78lq4j8uGv
 IPRS9JssD5rg6q7MrasyYYsrrR8+U0AwFYW1sWJvqkjGY2nnTUr7aBqc5OzYxgs4JXjy
 wqC8RLqi/iKk8Jhjj/2nT9BT3VI7mQXtVX9VT1fsbrEOFIW/Ppj5yLtLXOaqi0D+VuVK
 XpoaMXVyLfh0XGORpoyCYbWyjgKvGufca70AOSEqKW1sue9vIaPnHs5+yHRktdhMZbHP
 9YTg==
X-Gm-Message-State: APjAAAVPj5wCVwzLgQ+A250nTzQGOW9La+afFwjvGjWMKhIWildTAYTq
 /vilCEMh4bENFlI7fbTmLQyUBIcPJ/8=
X-Google-Smtp-Source: APXvYqyfMMXcW8vNuJT1m1tZAD1TfvSEM41ds6VJesaU0HG37EjcpPxbxcl5vTlUlFBbTOGYEEwdNg==
X-Received: by 2002:a05:620a:135b:: with SMTP id
 c27mr5714328qkl.119.1578516070441; 
 Wed, 08 Jan 2020 12:41:10 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id w21sm2304649qth.17.2020.01.08.12.41.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:41:10 -0800 (PST)
Message-ID: <5E163E65.70104@gmail.com>
Date: Wed, 08 Jan 2020 15:41:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: voonna santosh <santu_voonna@yahoo.com>
References: <1258262887.8487449.1578490158766@mail.yahoo.com>
 <12EB7A0E-F5F7-4FC8-A6CD-92A42E52F6B0@gmail.com>
 <900064020.8665629.1578507448504@mail.yahoo.com>
In-Reply-To: <900064020.8665629.1578507448504@mail.yahoo.com>
Subject: Re: [USRP-users] tx_samples_from_file : Issue with repeat option
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7641570974720350422=="
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

This is a multi-part message in MIME format.
--===============7641570974720350422==
Content-Type: multipart/alternative;
 boundary="------------000403090107090106000009"

This is a multi-part message in MIME format.
--------------000403090107090106000009
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/08/2020 01:17 PM, voonna santosh wrote:
> Hi Marcus,
> I am using USRP X300
Could you try a more recent UHD?


>
> On Wednesday, January 8, 2020, 6:13:26 PM GMT, Marcus D Leech 
> <patchvonbraun@gmail.com> wrote:
>
>
> Are you able to use a more recent UHD?
>
> What device type?
>
> Sent from my iPhone
>
>> On Jan 8, 2020, at 8:30 AM, voonna santosh via USRP-users 
>> <usrp-users@lists.ettus.com> wrote:
>>
>> ﻿
>> Hi There,
>>    Good morning. I am experiencing an issue with tx_samples_from_file 
>> when using option "--repeat". Everything looks alright when it TX the 
>> file, but once it reaches the end of the file, it prints S and 
>> nothing appears on analyzer soon after that.
>>
>> The command I am using: ./tx_samples_from_file --args 
>> addr=192.168.40.2  --file 
>> /home/santoshvoonna/repo/test_files/test_file_SW_Samples_28G.bin 
>> --type short --spb 3640 --rate 50e6 --freq 60e6  --gain 0 --ant TX/RX 
>> --subdev A:0 --bw 40 --ref internal --delay 0 --repeat
>>
>> Git tag: release_003_010_001_000
>>
>>
>> Thanks and Regards,
>> Santosh
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>


--------------000403090107090106000009
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/08/2020 01:17 PM, voonna santosh
      wrote:<br>
    </div>
    <blockquote
      cite="mid:900064020.8665629.1578507448504@mail.yahoo.com"
      type="cite">
      <div class="ydpf519db33yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false">Hi Marcus,</div>
        <div dir="ltr" data-setdir="false">I am using USRP X300<br>
        </div>
      </div>
    </blockquote>
    Could you try a more recent UHD?<br>
    <br>
    <br>
    <blockquote
      cite="mid:900064020.8665629.1578507448504@mail.yahoo.com"
      type="cite">
      <div class="ydpf519db33yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:16px;">
        <div><br>
        </div>
      </div>
      <div id="yahoo_quoted_9326676555" class="yahoo_quoted">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, January 8, 2020, 6:13:26 PM GMT, Marcus D
            Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id="yiv2196727461">
              <div>Are you able to use a more recent UHD?
                <div><br clear="none">
                </div>
                <div>What device type?<br clear="none">
                  <br clear="none">
                  <div dir="ltr">Sent from my iPhone</div>
                  <div dir="ltr">
                    <div class="yiv2196727461yqt5783188279"
                      id="yiv2196727461yqtfd89129"><br clear="none">
                      <blockquote type="cite">On Jan 8, 2020, at 8:30
                        AM, voonna santosh via USRP-users
                        <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> wrote:<br
                          clear="none">
                        <br clear="none">
                      </blockquote>
                    </div>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div class="yiv2196727461yqt5783188279"
                        id="yiv2196727461yqtfd57626">﻿</div>
                      <div class="yiv2196727461yahoo-style-wrap"
                        style="font-family:Helvetica Neue, Helvetica,
                        Arial, sans-serif;font-size:16px;">
                        <div class="yiv2196727461yqt5783188279"
                          id="yiv2196727461yqtfd09113">
                          <div dir="ltr">Hi There,</div>
                          <div dir="ltr">   Good morning. I am
                            experiencing an issue with <span>tx_samples_from_file
                              when using option "--repeat". Everything
                              looks alright when it TX the file, but
                              once it reaches the end of the file, it
                              prints S and nothing appears on analyzer
                              soon after that. <br clear="none">
                            </span></div>
                          <div dir="ltr"><span><br clear="none">
                            </span></div>
                        </div>
                        <div dir="ltr">
                          <div class="yiv2196727461yqt5783188279"
                            id="yiv2196727461yqtfd19957"><span>The
                              command I am using: <span>./tx_samples_from_file
                                --args addr=192.168.40.2  --file
                                /home/santoshvoonna/repo/test_files/test_file_SW_Samples_28G.bin  
                                --type short --spb 3640 --rate 50e6
                                --freq 60e6  --gain 0 --ant TX/RX
                                --subdev A:0 --bw 40 --ref internal
                                --delay 0 --repeat <br clear="none">
                              </span></span>
                            <div><br clear="none">
                            </div>
                            <div dir="ltr">Git tag: <span>release_003_010_001_000</span><br
                                clear="none">
                            </div>
                            <div><br clear="none">
                            </div>
                            <div><br clear="none">
                            </div>
                            <div dir="ltr">Thanks and Regards,</div>
                          </div>
                          <div dir="ltr">
                            <div class="yiv2196727461yqt5783188279"
                              id="yiv2196727461yqtfd28993">Santosh</div>
                            <br clear="none">
                          </div>
                          <span></span><br clear="none">
                        </div>
                      </div>
                      <span>_______________________________________________</span><br
                        clear="none">
                      <span>USRP-users mailing list</span><br
                        clear="none">
                      <span><a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a></span><br
                        clear="none">
                      <span><a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span>
                      <div class="yiv2196727461yqt5783188279"
                        id="yiv2196727461yqtfd34122"><br clear="none">
                      </div>
                    </div>
                  </blockquote>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------000403090107090106000009--


--===============7641570974720350422==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7641570974720350422==--

