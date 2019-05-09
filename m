Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 300F319359
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 22:25:11 +0200 (CEST)
Received: from [::1] (port=50346 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOpbJ-0002oR-EV; Thu, 09 May 2019 16:25:09 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:39056)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hOpal-0002e9-8g
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 16:25:05 -0400
Received: by mail-qt1-f177.google.com with SMTP id y42so4093240qtk.6
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 13:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=w7DXvJP8SR0grUt0XW2L28qQZuFCHSO0TlIMgymWmx8=;
 b=jj0RMW6V6xNyid4J47Ctp2roHqMbj+fgWCoMp+1DR88IZ/oPTH+j45JkBwQyNYfMoS
 hS91V6pEC1slB40G4cvsjNH+GhYtlve6alEOj7lgZ0LbYG+LyUo8EqOT3IWmJcoqIcXa
 DGpwVMuAg0MX0GC2rECX2kgUGDIvRhKl4ofscLKe8qYkqqLl9x0MTpeFLA3dILy3iS5z
 rIgbsKZlAkMeT/NuCdexR4xyRGvTVBiNdzGm1q+4uzMUzSWE+AhXrKiSWplO0TxTB8xF
 uAwiSxBxmFvXJHZMaJWghtRepPZ+HVwBch1pDvZ6IjsoMlugTNrAikc6ktYWDca7MWkV
 qANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=w7DXvJP8SR0grUt0XW2L28qQZuFCHSO0TlIMgymWmx8=;
 b=O6XVcnPhJ3ZmRvaCUAs+f0wz2VnGAwZoFA+xrWJZFBEiPz0W6McWXiz7Nf4AY4Fqkh
 160MFyV1jHBW6woWabD23YSErNRW3d9smSro4JBQmc255/oR6RczGnD26c8B0KxIhMkG
 H/6VLd6GIt50xaArEiA505O/Mp6GS5JpIbM2kIycCFqz1HemFOuKBV4SBmE2kCG9WC6b
 sooBPljq2xwKPBYjsm8LOlRW70NBuxY30lelA4MAJkDKU+3804kvEqqg1phfWxSt6mqA
 cPVDri8/BynLVcwx8aqQL/1EON8rUUTvHGHoIbTKWWy4pS+AWIqF0vTxVvEr65pAbAi/
 hFdw==
X-Gm-Message-State: APjAAAVO/7hZehPDf6cLbHsCGSi7jmwKnd/3R9hXyXc1Tm+r1Ip0M5Pp
 +Aw6ZixwI+eVjlUV3uhDWvcgtxUoqKk=
X-Google-Smtp-Source: APXvYqzlOduYLIM2kEr4RgB2M18iz3QnZGxS2fDUzwEVXXVRKrpUtXChkNDcClwqLeI+vvSbZMInjw==
X-Received: by 2002:a0c:d251:: with SMTP id o17mr5211463qvh.181.1557433434475; 
 Thu, 09 May 2019 13:23:54 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id e3sm1324978qkn.93.2019.05.09.13.23.53
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 13:23:53 -0700 (PDT)
Message-ID: <5CD48C58.9050302@gmail.com>
Date: Thu, 09 May 2019 16:23:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <CAGVTi8VOeNG5B9X-WaMQrvbxkt96UFhm5a6-++9znYCzexfRtQ@mail.gmail.com>
 <9f223faf-add7-74cc-faa1-d4a0ed95e28a@balister.org>
 <2C9C895D-DD6D-4456-9F1D-557F699AB391@k5so.com> <5CD36887.5050805@gmail.com>
 <4F25C7C9-CB61-46DF-9163-2CB0CF86DDCF@k5so.com>
 <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>
 <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
 <BL0PR12MB2340B79E071584EF5599E398AF330@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84612E15-1A0B-40FF-9AA3-A810D7500BE3@k5so.com>
 <CAM_0ocHPiAfxGGUND037U3mzSDoN_+odmwZX=tzDLq-=_JjH7A@mail.gmail.com>
 <CA+JMMq9dzg+FqLVgGJRZOBW4KMmYq2ZrCOOnLEVndKCtovF+PA@mail.gmail.com>
 <73C37420-AD11-4E22-9730-493E6FC41678@k5so.com>
 <52565C8B-D078-414F-A560-3672BEADE596@k5so.com>
 <A01FCD5D-DFB6-4E9F-AA41-5D2CF9B00EEA@k5so.com>
 <CA+JMMq_wYJYoenP=wX2ruK-KSHTT6EQdM6K+ksrGFLZZEe+5jQ@mail.gmail.com>
 <691F0564-B5AA-48C6-9258-D15F006E9F7D@k5so.com>
 <E4163757-B40B-4716-888F-2328596BB5B6@k5so.com>
In-Reply-To: <E4163757-B40B-4716-888F-2328596BB5B6@k5so.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Need a little help with running legacy prebuilt
 UHD versions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============2696927633616906393=="
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
--===============2696927633616906393==
Content-Type: multipart/alternative;
 boundary="------------090906090108020108030804"

This is a multi-part message in MIME format.
--------------090906090108020108030804
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/09/2019 04:18 PM, Joe Martin via USRP-users wrote:
> Nick, Ian,
>
> If this unit happens to be incorrectly labeled as a rev 2 N210 and it 
> is actually a rev 3 N210, is there hope in being able to load rev 3 
> firmware and fpga images (which I have located previously and tried 
> actually) with some available UHD version?  If so, would you be able 
> to tell me which UHD version(s) might be able to communicate with it?
>
> Joe
>
Theoretically, most versions in the last several years should be able to 
talk to it.  In *general* UHD never drops support for older hardware,
   and tries to maintain compatibility.  Now, it is the case that newer 
features are almost never "back-ported", but basic functionality should
   always be there.

What this *should* mean is that you should be able to use the firmware 
tools once the device is in "safe mode" to get yourself to where you
   want to be.  If that doesn't work, that may well mean that the 
hardware is broken, and it's unlikely to be economical to repair.


>> On May 9, 2019, at 2:12 PM, Joe Martin via USRP-users 
>> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>
>> Okay.  I’ve asserted from the outset that it’s a rev 2, based on the 
>> factory label.  Is this N210 a lost cause if it is actually a Rev2 N210?
>>
>> Joe
>>
>>> On May 9, 2019, at 2:05 PM, Nick Foster <bistromath@gmail.com 
>>> <mailto:bistromath@gmail.com>> wrote:
>>>
>>> Well, it's not a rev 4. It's either 2 or 3 in terms of hardware 
>>> revision.
>>>
>>> On Thu, May 9, 2019 at 12:58 PM Joe Martin <k5so@k5so.com 
>>> <mailto:k5so@k5so.com>> wrote:
>>>
>>>     …able to ping 192.168.10.2 successfully.
>>>
>>>>     On May 9, 2019, at 1:54 PM, Joe Martin <k5so@k5so.com
>>>>     <mailto:k5so@k5so.com>> wrote:
>>>>
>>>>     Ian,
>>>>
>>>>     Yes, I have tried many times to boot in safe mode, same result
>>>>     regardless.  Yes, I am able to pin to 192.168.10.2 successfully.
>>>>
>>>>     Joe
>>>>
>>>>>     On May 9, 2019, at 1:47 PM, Joe Martin via USRP-users
>>>>>     <usrp-users@lists.ettus.com
>>>>>     <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>
>>>>>     Ian and Nick,
>>>>>
>>>>>     Thanks for the assistance. Attached are dropbox links to two
>>>>>     snapshot photos:  1) the factory label on the back of the
>>>>>     N210, showing N210 r:2.0 and 2) a top side view of the N210.
>>>>>
>>>>>     1)
>>>>>     https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=0
>>>>>     2)
>>>>>     https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=0
>>>>>
>>>>>     Seems this unit is indeed a rev 2 N210, yes?
>>>>>
>>>>>     Joe
>>>>>
>>>>>>     On May 9, 2019, at 12:40 PM, Nick Foster
>>>>>>     <bistromath@gmail.com <mailto:bistromath@gmail.com>> wrote:
>>>>>>
>>>>>>     Moreover, the best "tell" is to look at the N210 motherboard.
>>>>>>     If the SRAM chip is on the top side, it's a rev 2/3. If the
>>>>>>     SRAM is on the bottom side, it's a rev 4. If you send a
>>>>>>     picture along of the top of the N210, I can tell you if it's
>>>>>>     early or late rev.
>>>>>>
>>>>>>     On Thu, May 9, 2019 at 11:36 AM Ian Buckley via USRP-users
>>>>>>     <usrp-users@lists.ettus.com
>>>>>>     <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>
>>>>>>         Joe,
>>>>>>         So I scratched my head about this a little late last
>>>>>>         night and looked back through the development repository
>>>>>>         for the N210 and as far as I can tell there was never
>>>>>>         customer facing FPGA code for a Rev2 N210. Chatting with
>>>>>>         Matt this morning he shared my feeling that a Rev2 wasn't
>>>>>>         sold to customers, so I'm curious if you have a unit that
>>>>>>         has a factory label that says N210Rev2 or if you have
>>>>>>         seen "usrp2 rev2.0" on the PCB (which can be missleading).
>>>>>>
>>>>>>         Also have you tried booting into the safe image and
>>>>>>         verifying that it at least pings on 192.168.10.2?
>>>>>>
>>>>>>         If we can conclusively identify which rev of h/w you have
>>>>>>         I can probably help further.
>>>>>>
>>>>>>         Ian
>>>>>>
>>>>>
>>>>>     _______________________________________________
>>>>>     USRP-users mailing list
>>>>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------090906090108020108030804
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/09/2019 04:18 PM, Joe Martin via
      USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:E4163757-B40B-4716-888F-2328596BB5B6@k5so.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      Nick, Ian, 
      <div class=""><br class="">
      </div>
      <div class="">If this unit happens to be incorrectly labeled as a
        rev 2 N210 and it is actually a rev 3 N210, is there hope in
        being able to load rev 3 firmware and fpga images (which I have
        located previously and tried actually) with some available UHD
        version?  If so, would you be able to tell me which UHD
        version(s) might be able to communicate with it?  </div>
      <div class=""><br class="">
      </div>
      <div class="">Joe<br class="">
        <div><br class="">
        </div>
      </div>
    </blockquote>
    Theoretically, most versions in the last several years should be
    able to talk to it.  In *general* UHD never drops support for older
    hardware,<br>
      and tries to maintain compatibility.  Now, it is the case that
    newer features are almost never "back-ported", but basic
    functionality should<br>
      always be there.  <br>
    <br>
    What this *should* mean is that you should be able to use the
    firmware tools once the device is in "safe mode" to get yourself to
    where you<br>
      want to be.  If that doesn't work, that may well mean that the
    hardware is broken, and it's unlikely to be economical to repair.<br>
    <br>
    <br>
    <blockquote cite="mid:E4163757-B40B-4716-888F-2328596BB5B6@k5so.com"
      type="cite">
      <div class="">
        <div>
          <blockquote type="cite" class="">
            <div class="">On May 9, 2019, at 2:12 PM, Joe Martin via
              USRP-users &lt;<a moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com" class="">usrp-users@lists.ettus.com</a>&gt;
              wrote:</div>
            <br class="Apple-interchange-newline">
            <div class="">
              <meta http-equiv="Content-Type" content="text/html;
                charset=windows-1252" class="">
              <div style="word-wrap: break-word; -webkit-nbsp-mode:
                space; line-break: after-white-space;" class="">Okay.
                 I’ve asserted from the outset that it’s a rev 2, based
                on the factory label.  Is this N210 a lost cause if it
                is actually a Rev2 N210? 
                <div class=""><br class="">
                </div>
                <div class="">Joe<br class="">
                  <div class=""><br class="">
                    <blockquote type="cite" class="">
                      <div class="">On May 9, 2019, at 2:05 PM, Nick
                        Foster &lt;<a moz-do-not-send="true"
                          href="mailto:bistromath@gmail.com" class="">bistromath@gmail.com</a>&gt;
                        wrote:</div>
                      <br class="Apple-interchange-newline">
                      <div class="">
                        <div dir="ltr" class="">Well, it's not a rev 4.
                          It's either 2 or 3 in terms of hardware
                          revision. <br class="">
                        </div>
                        <br class="">
                        <div class="gmail_quote">
                          <div dir="ltr" class="gmail_attr">On Thu, May
                            9, 2019 at 12:58 PM Joe Martin &lt;<a
                              moz-do-not-send="true"
                              href="mailto:k5so@k5so.com" class="">k5so@k5so.com</a>&gt;
                            wrote:<br class="">
                          </div>
                          <blockquote class="gmail_quote"
                            style="margin:0px 0px 0px
                            0.8ex;border-left:1px solid
                            rgb(204,204,204);padding-left:1ex">
                            <div style="overflow-wrap: break-word;"
                              class="">…able to ping 192.168.10.2
                              successfully.<br class="">
                              <div class=""><br class="">
                                <blockquote type="cite" class="">
                                  <div class="">On May 9, 2019, at 1:54
                                    PM, Joe Martin &lt;<a
                                      moz-do-not-send="true"
                                      href="mailto:k5so@k5so.com"
                                      target="_blank" class="">k5so@k5so.com</a>&gt;
                                    wrote:</div>
                                  <br
                                    class="gmail-m_-2513206580084366361Apple-interchange-newline">
                                  <div class="">
                                    <div style="overflow-wrap:
                                      break-word;" class="">Ian, 
                                      <div class=""><br class="">
                                      </div>
                                      <div class="">Yes, I have tried
                                        many times to boot in safe mode,
                                        same result regardless.  Yes, I
                                        am able to pin to 192.168.10.2
                                        successfully. </div>
                                      <div class=""><br class="">
                                      </div>
                                      <div class="">Joe<br class="">
                                        <div class=""><br class="">
                                          <blockquote type="cite"
                                            class="">
                                            <div class="">On May 9,
                                              2019, at 1:47 PM, Joe
                                              Martin via USRP-users &lt;<a
                                                moz-do-not-send="true"
                                                href="mailto:usrp-users@lists.ettus.com"
                                                target="_blank" class="">usrp-users@lists.ettus.com</a>&gt;
                                              wrote:</div>
                                            <br
                                              class="gmail-m_-2513206580084366361Apple-interchange-newline">
                                            <div class="">
                                              <div style="overflow-wrap:
                                                break-word;" class="">Ian
                                                and Nick, 
                                                <div class=""><br
                                                    class="">
                                                </div>
                                                <div class="">Thanks for
                                                  the assistance. 
                                                  Attached are dropbox
                                                  links to two snapshot
                                                  photos:  1) the
                                                  factory label on the
                                                  back of the N210,
                                                  showing N210 r:2.0 and
                                                  2) a top side view of
                                                  the N210. </div>
                                                <div class=""><br
                                                    class="">
                                                </div>
                                                <div class="">1) <a
                                                    moz-do-not-send="true"
href="https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=0"
                                                    target="_blank"
                                                    class="">https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=0</a></div>
                                                <div class="">2) <a
                                                    moz-do-not-send="true"
href="https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=0"
                                                    target="_blank"
                                                    class="">https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=0</a></div>
                                                <div class=""><br
                                                    class="">
                                                </div>
                                                <div class="">Seems this
                                                  unit is indeed a rev 2
                                                  N210, yes? </div>
                                                <div class=""><br
                                                    class="">
                                                </div>
                                                <div class="">Joe<br
                                                    class="">
                                                  <div class=""><br
                                                      class="">
                                                    <blockquote
                                                      type="cite"
                                                      class="">
                                                      <div class="">On
                                                        May 9, 2019, at
                                                        12:40 PM, Nick
                                                        Foster &lt;<a
                                                          moz-do-not-send="true"
href="mailto:bistromath@gmail.com" target="_blank" class="">bistromath@gmail.com</a>&gt;
                                                        wrote:</div>
                                                      <br
                                                        class="gmail-m_-2513206580084366361Apple-interchange-newline">
                                                      <div class="">
                                                        <div dir="ltr"
                                                          class="">Moreover,
                                                          the best
                                                          "tell" is to
                                                          look at the
                                                          N210
                                                          motherboard.
                                                          If the SRAM
                                                          chip is on the
                                                          top side, it's
                                                          a rev 2/3. If
                                                          the SRAM is on
                                                          the bottom
                                                          side, it's a
                                                          rev 4. If you
                                                          send a picture
                                                          along of the
                                                          top of the
                                                          N210, I can
                                                          tell you if
                                                          it's early or
                                                          late rev.<br
                                                          class="">
                                                        </div>
                                                        <br class="">
                                                        <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Thu, May 9, 2019 at 11:36 AM Ian Buckley via
                                                          USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank" class="">usrp-users@lists.ettus.com</a>&gt;
                                                          wrote:<br
                                                          class="">
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:0px
                                                          0px 0px
                                                          0.8ex;border-left:1px
                                                          solid
                                                          rgb(204,204,204);padding-left:1ex">
                                                          <div
                                                          dir="auto"
                                                          class="">Joe,
                                                          <div
                                                          dir="auto"
                                                          class="">So I
                                                          scratched my
                                                          head about
                                                          this a little
                                                          late last
                                                          night and
                                                          looked back
                                                          through the
                                                          development
                                                          repository for
                                                          the N210 and
                                                          as far as I
                                                          can tell there
                                                          was never
                                                          customer
                                                          facing FPGA
                                                          code for a
                                                          Rev2 N210.
                                                          Chatting with
                                                          Matt
                                                          this morning
                                                          he shared my
                                                          feeling that a
                                                          Rev2 wasn't
                                                          sold to
                                                          customers, so
                                                          I'm curious if
                                                          you have a
                                                          unit that has
                                                          a factory
                                                          label that
                                                          says N210Rev2
                                                          or if you have
                                                          seen "usrp2
                                                          rev2.0" on the
                                                          PCB (which can
                                                          be
                                                          missleading).</div>
                                                          <div
                                                          dir="auto"
                                                          class=""><br
                                                          class="">
                                                          </div>
                                                          <div
                                                          dir="auto"
                                                          class="">Also
                                                          have you tried
                                                          booting into
                                                          the safe image
                                                          and verifying
                                                          that it at
                                                          least pings on
                                                          192.168.10.2?</div>
                                                          <div
                                                          dir="auto"
                                                          class=""><br
                                                          class="">
                                                          </div>
                                                          <div
                                                          dir="auto"
                                                          class="">If we
                                                          can
                                                          conclusively
                                                          identify which
                                                          rev of h/w you
                                                          have I can
                                                          probably help
                                                          further.</div>
                                                          <div
                                                          dir="auto"
                                                          class=""><br
                                                          class="">
                                                          </div>
                                                          <div
                                                          dir="auto"
                                                          class="">Ian</div>
                                                          </div>
                                                          </blockquote>
                                                        </div>
                                                      </div>
                                                    </blockquote>
                                                  </div>
                                                  <br class="">
                                                </div>
                                              </div>
_______________________________________________<br class="">
                                              USRP-users mailing list<br
                                                class="">
                                              <a moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank" class="">USRP-users@lists.ettus.com</a><br
                                                class="">
                                              <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                                target="_blank" class="">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                                                class="">
                                            </div>
                                          </blockquote>
                                        </div>
                                        <br class="">
                                      </div>
                                    </div>
                                  </div>
                                </blockquote>
                              </div>
                              <br class="">
                            </div>
                          </blockquote>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                  <br class="">
                </div>
              </div>
              _______________________________________________<br
                class="">
              USRP-users mailing list<br class="">
              <a moz-do-not-send="true"
                href="mailto:USRP-users@lists.ettus.com" class="">USRP-users@lists.ettus.com</a><br
                class="">
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br
                class="">
            </div>
          </blockquote>
        </div>
        <br class="">
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------090906090108020108030804--


--===============2696927633616906393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2696927633616906393==--

