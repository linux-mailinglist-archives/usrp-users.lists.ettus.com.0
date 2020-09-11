Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5370267651
	for <lists+usrp-users@lfdr.de>; Sat, 12 Sep 2020 01:03:23 +0200 (CEST)
Received: from [::1] (port=58336 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGs4d-0005eS-Gm; Fri, 11 Sep 2020 19:03:19 -0400
Received: from resqmta-po-04v.sys.comcast.net ([96.114.154.163]:32791)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1kGs4Z-0005Zy-L7
 for usrp-users@lists.ettus.com; Fri, 11 Sep 2020 19:03:15 -0400
Received: from resomta-po-16v.sys.comcast.net ([96.114.154.240])
 by resqmta-po-04v.sys.comcast.net with ESMTP
 id GqWFkYnuVUpJBGs3ukC8v1; Fri, 11 Sep 2020 23:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1599865354;
 bh=ll7wHS22FFtYaOJr9viG53Z9YricYaZ87+oOpnZIkJI=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=6N4efCL/GzM27lJAH4n1WbZytOQtoPW6VaY+2lXDNYmB6F++CROribL8kUMLSGOzE
 Pv2WFn78CBnrgNsrgNttm4UhfjXU1meNk4roBrvDtmQYCwWgb8NMqC8Idq9IQ1gAOg
 Nm6C/QFM/GkzumUGgqv8V4YKFRdizI4fLnO1g6CyC4jlZ93XZYEMxSbtq2Hmq2BAux
 ep95cP+1LCd6fxvtRLrbDhq/4leT1HBd0a8RqSmBl7U7CbHITj+OjwqMDf+oWpV4dm
 NwI88XtUHw1yCUTkyxkaDKvJudME3F1jR2/+DbFyUK0zvvCi9PZy57eZDrGk+/4fFK
 w3fVwsn2VNYvA==
Received: from [IPv6:2601:647:4200:ea30:689b:86eb:6b25:77d]
 ([IPv6:2601:647:4200:ea30:689b:86eb:6b25:77d])
 by resomta-po-16v.sys.comcast.net with ESMTPSA
 id Gs3tkrBSwxjJfGs3uk0bbf; Fri, 11 Sep 2020 23:02:34 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <24fbcdd2-35fd-9d14-1c17-7a05d0d2a4e1@gmail.com>
 <95DB5B7C-BC71-4222-992C-41DBE2F7B0FA@gmail.com>
Message-ID: <4545f155-bf08-13f8-b1f4-5a77e78fe6a2@comcast.net>
Date: Fri, 11 Sep 2020 16:02:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <95DB5B7C-BC71-4222-992C-41DBE2F7B0FA@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] b200mini stops sampling
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============5514999407753910388=="
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
--===============5514999407753910388==
Content-Type: multipart/alternative;
 boundary="------------037472C688596C2FF12C7E9E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------037472C688596C2FF12C7E9E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Yes, it's not a problem. If you don't want to see the message, use:

git checkout v3.15.0.0 -b tmp

Also, you should never use the master branch of UHD. It's really a 
development branch and could be unstable. Always use a release tag.

To see all the release tags:

git tag

Ron

On 9/11/20 10:38, Marcus D Leech via USRP-users wrote:
> That should be fine.
>
> GIT is arcane. Others have more facility with it than I.
>
> Sent from my iPhone
>
>> On Sep 11, 2020, at 12:07 PM, David Evans via USRP-users 
>> <usrp-users@lists.ettus.com> wrote:
>>
>> ﻿ Thanks Marcus,
>>
>> Sorry,, I know this isn't the place, but when i check out a version I 
>> get "detached head...".
>> I also don't want to check anything back in, do I ignore this (I've 
>> never understood what detached head means, even after looking it up!).
>>
>> Cheers,
>> Dave
>>
>> On 10/09/2020 16:43, Marcus D. Leech via USRP-users wrote:
>>> On 09/10/2020 08:55 AM, David Evans via USRP-users wrote:
>>>> Hi,
>>>> I have just installed the latest "master" branch of UHD (4.0.0.0).
>>>>
>>>> If an overrun occurs during sampling, sampling does not continue 
>>>> thereafter.
>>>> I noticed this with uhd_fft, which hangs with rates over 8MHz, and 
>>>> also rx_samples_to_file:
>>>>
>>>> ./rx_samples_to_file --freq 900000000 --rate 40000000
>>>>
>>>> Creating the usrp device with: ...
>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
>>>> UHD_4.0.0.0-34-g2655b0aa
>>>> [INFO] [B200] Detected Device: B200mini
>>>> [INFO] [B200] Operating over USB 3.
>>>> [INFO] [B200] Initialize CODEC control...
>>>> [INFO] [B200] Initialize Radio control...
>>>> [INFO] [B200] Performing register loopback test...
>>>> [INFO] [B200] Register loopback test passed
>>>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>>>> [INFO] [B200] Asking for clock rate 16.000000 MHz...
>>>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>>>> Using Device: Single USRP:
>>>>   Device: B-Series Device
>>>>   Mboard 0: B200mini
>>>>   RX Channel: 0
>>>>     RX DSP: 0
>>>>     RX Dboard: A
>>>>     RX Subdev: FE-RX1
>>>>   TX Channel: 0
>>>>     TX DSP: 0
>>>>     TX Dboard: A
>>>>     TX Subdev: FE-TX1
>>>>
>>>> Setting RX Rate: 40.000000 Msps...
>>>> [INFO] [B200] Asking for clock rate 40.000000 MHz...
>>>> [INFO] [B200] Actually got clock rate 40.000000 MHz.
>>>> Actual RX Rate: 40.000000 Msps...
>>>>
>>>> Setting RX Freq: 900.000000 MHz...
>>>> Setting RX LO Offset: 0.000000 MHz...
>>>> Actual RX Freq: 900.000000 MHz...
>>>>
>>>> Waiting for "lo_locked": ++++++++++ locked.
>>>>
>>>> Press Ctrl + C to stop streaming...
>>>> OGot an overflow indication. Please consider the following:
>>>>   Your write medium must sustain a rate of 160.000000MB/s.
>>>>   Dropped samples will not be written to the file.
>>>>   Please modify this example for your purposes.
>>>>   This message will not appear again.
>>>> *Timeout while streaming*
>>>>
>>>> Done!
>>>>
>>>> Any ideas please?
>>>> Should I be using the master branch, if not how do I checkout a 
>>>> stable branch ?
>>>>
>>>> Thanks,
>>>> Dave
>>>>
>>>
>>> You can get a list of tagged versions using:
>>>
>>> git tag
>>>
>>> Try again with:
>>>
>>> git checkout   v3.15.0.0
>>>
>>> Sometimes when the overruns are persistent and at very high rates, 
>>> the software is unable to recover, because so much information has been
>>>   dropped, any recovery procedure would be roughly as drastic as 
>>> having to re-start.
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------037472C688596C2FF12C7E9E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Yes, it's not a problem. If you don't want to see the message,
      use:</p>
    <p>git checkout v3.15.0.0 -b tmp</p>
    <p>Also, you should never use the master branch of UHD. It's really
      a development branch and could be unstable. Always use a release
      tag.</p>
    <p>To see all the release tags:</p>
    <p>git tag<br>
    </p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 9/11/20 10:38, Marcus D Leech via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:95DB5B7C-BC71-4222-992C-41DBE2F7B0FA@gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      That should be fine. 
      <div><br>
      </div>
      <div>GIT is arcane. Others have more facility with it than I. <br>
        <br>
        <div dir="ltr">Sent from my iPhone</div>
        <div dir="ltr"><br>
          <blockquote type="cite">On Sep 11, 2020, at 12:07 PM, David
            Evans via USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a>
            wrote:<br>
            <br>
          </blockquote>
        </div>
        <blockquote type="cite">
          <div dir="ltr">﻿
            <meta http-equiv="Content-Type" content="text/html;
              charset=UTF-8">
            Thanks Marcus,<br>
            <br>
            Sorry,, I know this isn't the place, but when i check out a
            version I get "detached head...".<br>
            I also don't want to check anything back in, do I ignore
            this (I've never understood what detached head means, even
            after looking it up!).<br>
            <br>
            Cheers,<br>
            Dave<br>
            <br>
            <div class="moz-cite-prefix">On 10/09/2020 16:43, Marcus D.
              Leech via USRP-users wrote:<br>
            </div>
            <blockquote type="cite"
              cite="mid:5F5A498A.8060202@gmail.com">
              <meta content="text/html; charset=UTF-8"
                http-equiv="Content-Type">
              <div class="moz-cite-prefix">On 09/10/2020 08:55 AM, David
                Evans via USRP-users wrote:<br>
              </div>
              <blockquote
                cite="mid:d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com"
                type="cite">
                <meta http-equiv="content-type" content="text/html;
                  charset=UTF-8">
                Hi,<br>
                I have just installed the latest "master" branch of UHD
                (4.0.0.0).<br>
                <br>
                If an overrun occurs during sampling, sampling does not
                continue thereafter.<br>
                I noticed this with uhd_fft, which hangs with rates over
                8MHz, and also rx_samples_to_file:<br>
                <br>
                ./rx_samples_to_file --freq 900000000 --rate 40000000<br>
                <br>
                Creating the usrp device with: ...<br>
                [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
                UHD_4.0.0.0-34-g2655b0aa<br>
                [INFO] [B200] Detected Device: B200mini<br>
                [INFO] [B200] Operating over USB 3.<br>
                [INFO] [B200] Initialize CODEC control...<br>
                [INFO] [B200] Initialize Radio control...<br>
                [INFO] [B200] Performing register loopback test...<br>
                [INFO] [B200] Register loopback test passed<br>
                [INFO] [B200] Setting master clock rate selection to
                'automatic'.<br>
                [INFO] [B200] Asking for clock rate 16.000000 MHz...<br>
                [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
                Using Device: Single USRP:<br>
                  Device: B-Series Device<br>
                  Mboard 0: B200mini<br>
                  RX Channel: 0<br>
                    RX DSP: 0<br>
                    RX Dboard: A<br>
                    RX Subdev: FE-RX1<br>
                  TX Channel: 0<br>
                    TX DSP: 0<br>
                    TX Dboard: A<br>
                    TX Subdev: FE-TX1<br>
                <br>
                Setting RX Rate: 40.000000 Msps...<br>
                [INFO] [B200] Asking for clock rate 40.000000 MHz...<br>
                [INFO] [B200] Actually got clock rate 40.000000 MHz.<br>
                Actual RX Rate: 40.000000 Msps...<br>
                <br>
                Setting RX Freq: 900.000000 MHz...<br>
                Setting RX LO Offset: 0.000000 MHz...<br>
                Actual RX Freq: 900.000000 MHz...<br>
                <br>
                Waiting for "lo_locked": ++++++++++ locked.<br>
                <br>
                Press Ctrl + C to stop streaming...<br>
                OGot an overflow indication. Please consider the
                following:<br>
                  Your write medium must sustain a rate of
                160.000000MB/s.<br>
                  Dropped samples will not be written to the file.<br>
                  Please modify this example for your purposes.<br>
                  This message will not appear again.<br>
                <b>Timeout while streaming</b><br>
                <br>
                Done!<br>
                <br>
                Any ideas please?  <br>
                Should I be using the master branch, if not how do I
                checkout a stable branch ?<br>
                <br>
                Thanks,<br>
                Dave<br>
                <br>
              </blockquote>
              <br>
              You can get a list of tagged versions using:<br>
              <br>
              git tag<br>
              <br>
              Try again with:<br>
              <br>
              git checkout   v3.15.0.0<br>
              <br>
              Sometimes when the overruns are persistent and at very
              high rates, the software is unable to recover, because so
              much information has been<br>
                dropped, any recovery procedure would be roughly as
              drastic as having to re-start.<br>
              <br>
              <br>
              <br>
              <fieldset class="mimeAttachmentHeader"></fieldset>
              <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
            </blockquote>
            <br>
            <span>_______________________________________________</span><br>
            <span>USRP-users mailing list</span><br>
            <span><a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a></span><br>
            <span><a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------037472C688596C2FF12C7E9E--


--===============5514999407753910388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5514999407753910388==--

