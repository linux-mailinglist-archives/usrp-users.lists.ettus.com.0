Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE2520FBDB
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jun 2020 20:36:57 +0200 (CEST)
Received: from [::1] (port=36500 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqL7l-0001Jy-G6; Tue, 30 Jun 2020 14:36:53 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:42660)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jqL7i-0001EU-50
 for usrp-users@lists.ettus.com; Tue, 30 Jun 2020 14:36:50 -0400
Received: by mail-qt1-f169.google.com with SMTP id e12so16356657qtr.9
 for <usrp-users@lists.ettus.com>; Tue, 30 Jun 2020 11:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=axP+IKVDNfOEJsKzaOGra4EbaISNN+Ey66Fmd7iMUfg=;
 b=jBxYl1620uEk4+rXcy13GNiZp5DoqvkZy/e4txKU7hNuPe+dfIqQDjP5J3KaQ0ZV2d
 vHmgAhTp7RxKKk/TuzCIBMFFrC/Y8wK4OkRcUSw38qdodfrOMKqVz+m/ODQUygqcALTG
 OHNipitG7gWWveDYloS3JSGzhKj5WzBQyWoRdG3nZppz1GIUgLlCLYR49xZ+/kAl9Pap
 x90ujL+FIZVL/GuJn8W3fivvcxXHFsSban1yIv8THV27AZENHptKIkfpDknZg+kwzZsB
 guO9OSFZ2opG4TIkEvbBeUvhaaEjy22TFj4meG9ng0r7o6iidCjqoiRrqPTEFdhrToyz
 ZWmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=axP+IKVDNfOEJsKzaOGra4EbaISNN+Ey66Fmd7iMUfg=;
 b=cM11qJYuzXsYoiqRL8l3jumtQQ+DhBdZ5GElr+rRFTA9/CdKwh0vig1cnc5ljOdIJb
 HaoRb2SiDoQeoFfqo3jHeD0JuasGS94psLdPUHMdYAxD09q1yQp2wYBaLF2fjTi5Lqtu
 Sg3QdQj0+YTtqrThxlzs7GMIylcoOuN2BFlQ7KO9ZHsebjIXVvmroINs7ZgIOhM/SfXs
 8+yA23MdPSmhWTG9aMZcHka7x5MoTM702He6nNY8avAipTVx0FeyLWkFCLsP8b5NI5RS
 W3B7wj2mkNE4ecNyblqnXDjAEPI8LZK+YyIV56s2mcTQar+zEmj0wUtcE3rlSmGoSACz
 EQgA==
X-Gm-Message-State: AOAM533AflXeVdRqIViSIVn9bfir51QhP0u35OT7mksOr8F4SWzpDAgr
 UdUtBez4cBqUjDpA03Edq1EkNmQP
X-Google-Smtp-Source: ABdhPJzziO4yzzB1ym+4PALIoPPcZ1UCsIFavMf6WadlZYlpacqMogqy+ZqeMQrWPcHulyjncSZPqw==
X-Received: by 2002:aed:2aa5:: with SMTP id t34mr23106934qtd.363.1593542168675; 
 Tue, 30 Jun 2020 11:36:08 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id a6sm3661589qkd.69.2020.06.30.11.36.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 11:36:08 -0700 (PDT)
Message-ID: <5EFB8617.4020009@gmail.com>
Date: Tue, 30 Jun 2020 14:36:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nando Pellegrini <i1ndp.nando@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <dd50baf6-aabd-1ce3-1014-f8ae91e4c969@gmail.com>
 <5EFB5394.2070507@gmail.com> <5b3b4166-d933-a37a-6766-07fac0f8429e@gmail.com>
 <5EFB6064.6090005@gmail.com> <16be290f-cbed-0bdb-f8d6-dd14bb4a44f0@gmail.com>
In-Reply-To: <16be290f-cbed-0bdb-f8d6-dd14bb4a44f0@gmail.com>
Subject: Re: [USRP-users] Problems with "uhd::set_thread_priority_safe"
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============2130798320744060434=="
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
--===============2130798320744060434==
Content-Type: multipart/alternative;
 boundary="------------050901040007040902050900"

This is a multi-part message in MIME format.
--------------050901040007040902050900
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/30/2020 12:09 PM, Nando Pellegrini wrote:
> Unfortunately no, actually the return code is 1 (true)  which usually 
> means all OK!
Yes, so, it's not a thread-priority issue.

Have you set your CPU(s) on your laptop to "Performance" mode?

Again, what is your device argument when you create the UHD device? Are 
you using larger USB buffers (via num_recv_frames?)

What type of CPU is your laptop?  (You can copy/paste the output of:  
cat /proc/cpuinfo)


>
> On 6/30/2020 17:55, Marcus D. Leech wrote:
>> On 06/30/2020 11:36 AM, Nando Pellegrini wrote:
>>> Thanks Marcus for the suggestion but....
>>> I am not a real an expert of Linux but i know that the standard c 
>>> library which i knew since the Unix time does not work anymore and 
>>> that's because  Ettus research provided a special interface (working 
>>> at a level lower than the clib).
>>> I am also confident in the identification of the problem because if 
>>> i remove the call to the Ettus function from the old tower system 
>>> (which is slower then the new laptop) that is exactly what's happening.
>>> To complete the story and since i know that you too are involved in 
>>> pulsar detection. I suspended my astronomic activity few years ago 
>>> because of the big rfi from radar, now i implemented what i believe 
>>> could be a good rfi mitigation done on the fly and
>>>>
>>>> Eric
>>>>
>>>>
>>>>
>>>> On Monday, June 29, 2020 at 10:41:09 AM UTC-4, Eric Ross wrote:
>>>>
>>>>     I am helping my 13 and 15 year old daughters build a
>>>>     hydrogen-line 21-cm telescope for a Milky Way study (training
>>>>     the next generation of scientists: they are doing all the work
>>>>     and I am an advisor). We had our first complete system test
>>>>     yesterday (image below) but question the results. We'd
>>>>     appreciate any advice you might be able to provide us.
>>>>
>>>>     We first tested our SDR/system with an FM antenna at FM
>>>>     frequencies to make sure the software/collection/SDR worked
>>>>     (which it did). We then connected our home-built 1.7m Yagi-Uda
>>>>     antenna and as a test yesterday obtained spectra of the sun
>>>>     (pointed directly at the sun). And it appears we obtained some
>>>>     kind of signal at roughly 1.4024 GHz when pointed directly at
>>>>     the sun which is roughly what we expected. We also checked to
>>>>     make sure by pointing the antenna 90 degrees away from the sun
>>>>     in multiple directions (virtually zero signal, but a tiny
>>>>     amount), disconnecting power to the LNA (no signal we could
>>>>     discern from the noise) and disconnecting the antenna
>>>>     completely (just noise). So it would seem we are obtaining some
>>>>     sort of real signal of the sun.
>>>>
>>>>     However, in my naivete I had expected at best we might obtain a
>>>>     wide blob spectra at 1.420405 GHz. But instead we obtained
>>>>     multiple distinct spectral lines around 1.420405 GHz but none
>>>>     exactly on the expected midpoint. Also, they were strong but
>>>>     "intermittent" (i.e. they were mostly present, but then
>>>>     disappeared for short times) -- you can see the waterfall
>>>>     spectra in blue/yellow. These aren't averaged signals: the
>>>>     chart is just raw in from the SDR (I assume if we average the
>>>>     signals we'd get very nice signal/noise but very sharp peaks at
>>>>     the same frequencies not exactly at 1.420405 GHz).
>>>>
>>>>     So are these actual signals? (I hope they are because I can't
>>>>     explain them otherwise.) Are the separate lines simply some
>>>>     sort of ringing or harmonics around a midpoint or issue with
>>>>     our electronics or antenna? -- something we can/should fix? Any
>>>>     advice you might have for us? -- we're excited to move to the
>>>>     next step (night observations ideally of the Milky Way) but
>>>>     want to understand/fine-tune our equipment and results first.
>>>>
>>>>     Thank you for your expertise.
>>>>
>>>>
>>>>     (if the below chart is difficult to read, the spectra starts at
>>>>     1,420.0 MHz on the far left and goes by 0.2 MHz increments,
>>>>     ending at 1,421.8 MHz on the far right.)
>>>>
>>>>
>>>>
>>>> -- 
>>>> -- 
>>>> You received this message because you are subscribed to the Google
>>>> Groups "Society of Amateur Radio Astronomers" group.
>>>> To post to this group, send email to sara-list@googlegroups.com
>>>> To unsubscribe from this group, send email to
>>>> sara-list-unsubscribe@googlegroups.com
>>>> For more options, visit this group at
>>>> http://groups.google.com/group/sara-list?hl=en
>>>> ---
>>>> You received this message because you are subscribed to the Google 
>>>> Groups "Society of Amateur Radio Astronomers" group.
>>>> To unsubscribe from this group and stop receiving emails from it, 
>>>> send an email to sara-list+unsubscribe@googlegroups.com 
>>>> <mailto:sara-list+unsubscribe@googlegroups.com>.
>>>> To view this discussion on the web visit 
>>>> https://groups.google.com/d/msgid/sara-list/f16f93bf-9df1-48dc-80c4-7f2293aeddbbo%40googlegroups.com 
>>>> <https://groups.google.com/d/msgid/sara-list/f16f93bf-9df1-48dc-80c4-7f2293aeddbbo%40googlegroups.com?utm_medium=email&utm_source=footer>.
>>> practically wiping away all the radar signals touching only 2-3% of 
>>> the samples to discovery that i had a very high background noise 
>>> coming from the tower PC.
>>> That's why i am making an attempt with a laptop of last generation.
>>> Glad to hear from you, my best wishes and hope to have some pulsar 
>>> news shortly.
>>> nando
>>>
>> Are you getting an error message about set_thread_priority_safe not 
>> working?  It usually gives you a warning if it doesn't work.
>>
>> If so, you need to make certain that your user is in group "usrp", 
>> and that
>>
>> /etc/security/limits.conf contains a line:
>>
>> @usrp  - rtprio 50
>>
>>
>> But my *suspicion* is that this won't help.
>>
>> You may need to add:
>>
>> num_recv_frames=128
>>
>> To your device argument string.
>>
>> Also, does the laptop have a real USB3 port?  Are you using the 
>> default sample width of 16-bits?
>>
>>
>>>
>>> On 6/30/2020 17:00, Marcus D. Leech via USRP-users wrote:
>>>> On 06/30/2020 06:38 AM, Nando Pellegrini via USRP-users wrote:
>>>>> I am a B200mini user since few years used for radio astronomy 
>>>>> observations with home made software. No trouble so far.
>>>>> I decided now to move to a new laptop PC running Ubuntu 18.4 with 
>>>>> latest update (kernel 5.3.0-61) , after porting my software i am 
>>>>> not able to receive anything above 40M samples /sec without 
>>>>> dropping in overflow error.
>>>>> I suspected that the setting of high priority was not running 
>>>>> anymore.
>>>>> I tried a short code  loop of receiving streamed blocks from B200 
>>>>> (a single thread coding) and with or without issuing 
>>>>> "uhd::set_thread_priority_safe" the result was the same (overflow 
>>>>> after a number of blocks received very variable) much different 
>>>>> that previous installation being able to receive and handle 56 
>>>>> samples/sec.
>>>>> I could not find any way to check the real priority via c++ or 
>>>>> available tools.
>>>>> Any help/suggestions very appreciated.
>>>>> Nando Pellegrini
>>>>>
>>>> Nando:
>>>>
>>>> It's unlikely that scheduling priority has much to do with your 
>>>> problems, but here's is the MAN page for getpriority()
>>>>
>>>> https://man7.org/linux/man-pages/man2/getpriority.2.html
>>>>
>>>>
>>>> What device arguments are you using?  Are you using the 
>>>> "num_recv_frames" argument?
>>>>
>>>> You note a move to a new laptop.  What are its specs?
>>>>
>>>> The performance of your application depends on a LOT of factors, 
>>>> including things like what kind of USB controller you have, how 
>>>> fast the
>>>>  CPU is, how fast the memory interface is, etc, etc.
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>


--------------050901040007040902050900
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/30/2020 12:09 PM, Nando
      Pellegrini wrote:<br>
    </div>
    <blockquote
      cite="mid:16be290f-cbed-0bdb-f8d6-dd14bb4a44f0@gmail.com"
      type="cite">Unfortunately no, actually the return code is 1
      (true)  which usually means all OK!
      <br>
    </blockquote>
    Yes, so, it's not a thread-priority issue.<br>
    <br>
    Have you set your CPU(s) on your laptop to "Performance" mode?<br>
    <br>
    Again, what is your device argument when you create the UHD device? 
    Are you using larger USB buffers (via num_recv_frames?)<br>
    <br>
    What type of CPU is your laptop?  (You can copy/paste the output
    of:  cat /proc/cpuinfo)<br>
    <br>
    <br>
    <blockquote
      cite="mid:16be290f-cbed-0bdb-f8d6-dd14bb4a44f0@gmail.com"
      type="cite">
      <br>
      On 6/30/2020 17:55, Marcus D. Leech wrote:
      <br>
      <blockquote type="cite">On 06/30/2020 11:36 AM, Nando Pellegrini
        wrote:
        <br>
        <blockquote type="cite">Thanks Marcus for the suggestion but....
          <br>
          I am not a real an expert of Linux but i know that the
          standard c library which i knew since the Unix time does not
          work anymore and that's because  Ettus research provided a
          special interface (working at a level lower than the clib).
          <br>
          I am also confident in the identification of the problem
          because if i remove the call to the Ettus function from the
          old tower system (which is slower then the new laptop) that is
          exactly what's happening.
          <br>
          To complete the story and since i know that you too are
          involved in pulsar detection. I suspended my astronomic
          activity few years ago because of the big rfi from radar, now
          i implemented what i believe could be a good rfi mitigation
          done on the fly and <br>
          <blockquote
            cite="mid:f16f93bf-9df1-48dc-80c4-7f2293aeddbbo@googlegroups.com"
            type="cite">
            <div dir="ltr">
              <div><br>
              </div>
              <div>Eric</div>
              <div><br>
              </div>
              <div><br>
                <br>
                On Monday, June 29, 2020 at 10:41:09 AM UTC-4, Eric Ross
                wrote:
                <blockquote class="gmail_quote" style="margin:
                  0;margin-left: 0.8ex;border-left: 1px #ccc
                  solid;padding-left: 1ex;">
                  <div dir="ltr">I am helping my 13 and 15 year old
                    daughters build a hydrogen-line 21-cm telescope for
                    a Milky Way study (training the next generation of
                    scientists: they are doing all the work and I am an
                    advisor). We had our first complete system test
                    yesterday (image below) but question the results.
                    We'd appreciate any advice you might be able to
                    provide us.
                    <div><br>
                    </div>
                    <div>We first tested our SDR/system with an FM
                      antenna at FM frequencies to make sure the
                      software/collection/SDR worked (which it did). We
                      then connected our home-built 1.7m Yagi-Uda
                      antenna and as a test yesterday obtained spectra
                      of the sun (pointed directly at the sun). And it
                      appears we obtained some kind of signal at roughly
                      1.4024 GHz when pointed directly at the sun which
                      is roughly what we expected. We also checked to
                      make sure by pointing the antenna 90 degrees away
                      from the sun in multiple directions (virtually
                      zero signal, but a tiny amount), disconnecting
                      power to the LNA (no signal we could discern from
                      the noise) and disconnecting the antenna
                      completely (just noise). So it would seem we are
                      obtaining some sort of real signal of the sun.</div>
                    <div><br>
                    </div>
                    <div>However, in my naivete I had expected at best
                      we might obtain a wide blob spectra at 1.420405
                      GHz. But instead we obtained multiple distinct
                      spectral lines around 1.420405 GHz but none
                      exactly on the expected midpoint. Also, they were
                      strong but "intermittent" (i.e. they were mostly
                      present, but then disappeared for short times) --
                      you can see the waterfall spectra in blue/yellow.
                      These aren't averaged signals: the chart is just
                      raw in from the SDR (I assume if we average the
                      signals we'd get very nice signal/noise but very
                      sharp peaks at the same frequencies not exactly at
                      1.420405 GHz).</div>
                    <div><br>
                    </div>
                    <div>So are these actual signals? (I hope they are
                      because I can't explain them otherwise.) Are the
                      separate lines simply some sort of ringing or
                      harmonics around a midpoint or issue with our
                      electronics or antenna? -- something we can/should
                      fix? Any advice you might have for us? -- we're
                      excited to move to the next step (night
                      observations ideally of the Milky Way) but want to
                      understand/fine-tune our equipment and results
                      first.</div>
                    <div><br>
                    </div>
                    <div>Thank you for your expertise.</div>
                    <div><br>
                    </div>
                    <div><br>
                    </div>
                    <div>(if the below chart is difficult to read, the
                      spectra starts at 1,420.0 MHz on the far left and
                      goes by 0.2 MHz increments, ending at 1,421.8 MHz
                      on the far right.)</div>
                    <div>
                      <div><br>
                      </div>
                      <div><br>
                      </div>
                      <div><img moz-do-not-send="true"
src="https://lh6.googleusercontent.com/proxy/IKF37c_Fo6F6CgB-ou4aBYxXr7GGslN8lkmmjfc-iHfutGVv8NG_Mhd_IDcCJzRMP3oyt4IlbTVkfS1I_QDaarm6XDgEKh7xsrtumYXcs69Px7LOxxD3_v1Rpr-547u4QwzNrqfFJJDG9FPJ-quF7xwv6jdMbgZdlS6x7FghSXi-DjoOvA_v3Fo1BtOERn9nt5dslW9BJ92IW4idJ8yGwCZtrHLaX9mNbjn9AgiOq1H_oKWkPQCd83JCQM08fGtdKSLG60bNbiwx81n1wkr11AnjNADgNTONdzPU_wYIToyM4nbMxHxofbcQo9gnDxWKh9d68Xk9GlBSXBoLYA=w5000-h5000"><br>
                      </div>
                    </div>
                  </div>
                </blockquote>
              </div>
            </div>
            -- <br>
            -- <br>
            You received this message because you are subscribed to the
            Google<br>
            Groups "Society of Amateur Radio Astronomers" group.<br>
            To post to this group, send email to
            <a class="moz-txt-link-abbreviated" href="mailto:sara-list@googlegroups.com">sara-list@googlegroups.com</a><br>
            To unsubscribe from this group, send email to<br>
            <a class="moz-txt-link-abbreviated" href="mailto:sara-list-unsubscribe@googlegroups.com">sara-list-unsubscribe@googlegroups.com</a><br>
            For more options, visit this group at<br>
            <a moz-do-not-send="true"
              href="http://groups.google.com/group/sara-list?hl=en">http://groups.google.com/group/sara-list?hl=en</a><br>
            --- <br>
            You received this message because you are subscribed to the
            Google Groups "Society of Amateur Radio Astronomers" group.<br>
            To unsubscribe from this group and stop receiving emails
            from it, send an email to <a moz-do-not-send="true"
              href="mailto:sara-list+unsubscribe@googlegroups.com">sara-list+unsubscribe@googlegroups.com</a>.<br>
            To view this discussion on the web visit <a
              moz-do-not-send="true"
href="https://groups.google.com/d/msgid/sara-list/f16f93bf-9df1-48dc-80c4-7f2293aeddbbo%40googlegroups.com?utm_medium=email&amp;utm_source=footer">https://groups.google.com/d/msgid/sara-list/f16f93bf-9df1-48dc-80c4-7f2293aeddbbo%40googlegroups.com</a>.<br>
          </blockquote>
          practically wiping away all the radar signals touching only
          2-3% of the samples to discovery that i had a very high
          background noise coming from the tower PC.
          <br>
          That's why i am making an attempt with a laptop of last
          generation.
          <br>
          Glad to hear from you, my best wishes and hope to have some
          pulsar news shortly.
          <br>
          nando
          <br>
          <br>
        </blockquote>
        Are you getting an error message about set_thread_priority_safe
        not working?  It usually gives you a warning if it doesn't work.
        <br>
        <br>
        If so, you need to make certain that your user is in group
        "usrp", and that
        <br>
        <br>
        /etc/security/limits.conf contains a line:
        <br>
        <br>
        @usrp  - rtprio 50
        <br>
        <br>
        <br>
        But my *suspicion* is that this won't help.
        <br>
        <br>
        You may need to add:
        <br>
        <br>
        num_recv_frames=128
        <br>
        <br>
        To your device argument string.
        <br>
        <br>
        Also, does the laptop have a real USB3 port?  Are you using the
        default sample width of 16-bits?
        <br>
        <br>
        <br>
        <blockquote type="cite">
          <br>
          On 6/30/2020 17:00, Marcus D. Leech via USRP-users wrote:
          <br>
          <blockquote type="cite">On 06/30/2020 06:38 AM, Nando
            Pellegrini via USRP-users wrote:
            <br>
            <blockquote type="cite">I am a B200mini user since few years
              used for radio astronomy observations with home made
              software. No trouble so far.
              <br>
              I decided now to move to a new laptop PC running Ubuntu
              18.4 with latest update (kernel 5.3.0-61) , after porting
              my software i am not able to receive anything above 40M
              samples /sec without dropping in overflow error.
              <br>
              I suspected that the setting of high priority was not
              running anymore.
              <br>
              I tried a short code  loop of receiving streamed blocks
              from B200 (a single thread coding) and with or without
              issuing "uhd::set_thread_priority_safe" the result was the
              same (overflow after a number of blocks received very
              variable) much different that previous installation being
              able to receive and handle 56 samples/sec.
              <br>
              I could not find any way to check the real priority via
              c++ or available tools.
              <br>
              Any help/suggestions very appreciated.
              <br>
              Nando Pellegrini
              <br>
              <br>
            </blockquote>
            Nando:
            <br>
            <br>
            It's unlikely that scheduling priority has much to do with
            your problems, but here's is the MAN page for getpriority()
            <br>
            <br>
            <a class="moz-txt-link-freetext" href="https://man7.org/linux/man-pages/man2/getpriority.2.html">https://man7.org/linux/man-pages/man2/getpriority.2.html</a>
            <br>
            <br>
            <br>
            What device arguments are you using?  Are you using the
            "num_recv_frames" argument?
            <br>
            <br>
            You note a move to a new laptop.  What are its specs?
            <br>
            <br>
            The performance of your application depends on a LOT of
            factors, including things like what kind of USB controller
            you have, how fast the
            <br>
             CPU is, how fast the memory interface is, etc, etc.
            <br>
            <br>
            <br>
            <br>
            _______________________________________________
            <br>
            USRP-users mailing list
            <br>
            <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
            <br>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
            <br>
          </blockquote>
          <br>
        </blockquote>
        <br>
      </blockquote>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------050901040007040902050900--


--===============2130798320744060434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2130798320744060434==--

