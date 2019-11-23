Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F51108107
	for <lists+usrp-users@lfdr.de>; Sun, 24 Nov 2019 00:29:21 +0100 (CET)
Received: from [::1] (port=33236 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYeq5-0005h0-LN; Sat, 23 Nov 2019 18:29:17 -0500
Received: from mail-qt1-f175.google.com ([209.85.160.175]:41704)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iYeq2-0005YI-EG
 for usrp-users@lists.ettus.com; Sat, 23 Nov 2019 18:29:14 -0500
Received: by mail-qt1-f175.google.com with SMTP id 59so7042257qtg.8
 for <usrp-users@lists.ettus.com>; Sat, 23 Nov 2019 15:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=UGhvbhoIQhCtQd/b069c3e1TW14AVK/rP5UPkk2TQsI=;
 b=kboYew3Ox18fnWeTqQ2QLVYngMoIfMr8p3ya833nXHf2VPbXE+DLIGGNM6GnqFhBh7
 /26nzg8dWhpZDL+wMT50a8cFCUeoBH3MHoRpZD0494sTRCT3ZQOFGhornm257urT7PTS
 w2/Xlx64BcfKHJMlu5SxJeKoRRJIz2TL6ihocgT2SNO1kpOCbPKZyvnW5qYCZfOr9SP7
 tXVqT/IoB//PDLInun2NgUwOUjjkpIYFwAkHaoHAj2Dosk2qsFnCFA40qtUujj//Vpnc
 scKgIfIRtOAt7a+aRf7+NWMJVJOypEql6XiSoa9LyKDx8ek7SdUG0eyRarwqSE3KfWQF
 X/Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=UGhvbhoIQhCtQd/b069c3e1TW14AVK/rP5UPkk2TQsI=;
 b=Owb+uD48nNiuJOLZAFvyivddHB/Na9CFi/2gPkGYXrqHk11auW3oEzN+61YxEawqbD
 Z1hwt1Q2SX6Vq54Zb93zh34yKX1ZLbeVAoVjDisEeCEUIJpXwglbCfftXC6W09dCduCb
 7HHKoV+1ce+oZce2w02M+TFN/PlJNkPlZ+zwug6sxK1RO5UAiL1NNiGVEeMgYGYN2+G7
 zplfQWYdRIMH59CAvubrH6wM5v3hOVvzHuVou73IRgpXDlLCNjWtyKNVaqlpZutj4oSh
 OLeKgwc02TLtkVty8Tz1H/FSI409Y8cGHmkcFq0VNrUxKNK29zQry16AT4G6NGLhg+ke
 cpsw==
X-Gm-Message-State: APjAAAVnI1dlDo6B76nAtUQFX3R7zs1RnM8gHu2Z0E/GD0f1tPt8PFc6
 e2Jcc3bD+ckaaW+ozpmngz7ISgEHTAk=
X-Google-Smtp-Source: APXvYqzFtJ8FNRg3iuydhBQzbRHa2TONdETCu53y9cDnYOOteSUImZmArzQTFitCpMqi7rX29pAwQQ==
X-Received: by 2002:ac8:6f27:: with SMTP id i7mr3810422qtv.232.1574551713608; 
 Sat, 23 Nov 2019 15:28:33 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id q34sm1316620qte.50.2019.11.23.15.28.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 23 Nov 2019 15:28:32 -0800 (PST)
Message-ID: <5DD9C0A0.6030600@gmail.com>
Date: Sat, 23 Nov 2019 18:28:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Austin Adam <austinadam42@gmail.com>
References: <CAMKs6hfoUZdBUPQf5DjRdcRBjqgzAVRbT6xNVT2CncGPntAsTA@mail.gmail.com>
 <5DD9B351.5040406@gmail.com>
 <CAMKs6heE4bsDnBi5Yvb5gzPRb3nHyd15dmK1mO0Nbwson95J0A@mail.gmail.com>
 <5DD9B8E1.80705@gmail.com>
 <CAMKs6hejPSHcQE1K_AyH7yv1dRgy69j3vWErosJuu46-0fJdvQ@mail.gmail.com>
 <5DD9BE1D.1040300@gmail.com>
 <CAMKs6hdMw5DjX37q=Lvn=UD2D_xf2G3zFtuAqASS27ELb9tPjQ@mail.gmail.com>
In-Reply-To: <CAMKs6hdMw5DjX37q=Lvn=UD2D_xf2G3zFtuAqASS27ELb9tPjQ@mail.gmail.com>
Subject: Re: [USRP-users] USRP N310 Losing Connection Occassionally
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1975961448510860454=="
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
--===============1975961448510860454==
Content-Type: multipart/alternative;
 boundary="------------040501090205060900020609"

This is a multi-part message in MIME format.
--------------040501090205060900020609
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/23/2019 06:24 PM, Austin Adam wrote:
> For testing, I just put a simple signal source, added a head block, 
> and then a QT Time sink and it seems to just go for a second and 
> freeze. I am sure this is the correct way to do it. When it issues the 
> 'done' is it supposed to close? Or send a message? Or change some 
> variable that I then have to check in the code?
When a block marks "done", that propagates inwards, and it's possibly 
the case that the QT blocks don't honor that?

Try it with something like a null sink, or a file sink going to 
/dev/null, and see that it nicely terminates--configure your block for 
"no gui" and
   "exit when done".

This question is drifting more into Gnu Radio land, so if this drifts 
into straight-up Gnu Radio territory, the discussion should be held on
   the discuss-gnuradio mailing list--where there are more people who 
have opinions about GR "stuff".


>
> On Sat, Nov 23, 2019 at 3:17 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 11/23/2019 06:06 PM, Austin Adam wrote:
>>     So I just put it in between my source and sink and when it hits
>>     lets say 1000000 samples, it will automatically terminate the
>>     script? I just tried doing it and it doesn't seem to be working,
>>     it just sort of freezes up after about a second. Maybe I am not
>>     doing it correctly..
>     You put it after your source, and the rest of the graph is the same.
>
>     If it just "freezes up", that's, I think, unexpected, and may
>     indicate some deficiencies in flowgraph shutdown on N3xx hardware.
>
>     What does you GR script look like?
>
>
>>
>>     On Sat, Nov 23, 2019 at 2:55 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>         On 11/23/2019 05:48 PM, Austin Adam wrote:
>>>         Hey Marcus,
>>>         Thank you for the quick response! This sounds like a good
>>>         solution, could you give some insight on how to go about
>>>         doing it?
>>>
>>>         Thank you so much!
>>         The "head" block takes a number, which is the count of
>>         samples that it will allow through it before it declares
>>         "Done", and thus causes
>>           clean termination of your GR Script.
>>
>>
>>>
>>>         On Sat, Nov 23, 2019 at 2:32 PM Marcus D. Leech via
>>>         USRP-users <usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>>
>>>             On 11/23/2019 03:49 PM, Austin Adam via USRP-users wrote:
>>>>             I am trying to run a Gnu Radio python file via the
>>>>             terminal and only want to run in for a few seconds and
>>>>             then kill it. Then, wait a little bit, and rerun the
>>>>             script again. My problem is that sometimes, when I
>>>>             rerun it, I get an issue with my USRP N310 in that it
>>>>             decides to just disconnect with either a "No devices
>>>>             found for" or "Someone tried to claim this device
>>>>             again" message. I have posted the error messages below
>>>>             from two different instances.
>>>>
>>>>             When this happens, running uhd_find_devices does not
>>>>             find the N310, neither does uhd_find_devices
>>>>             --args=addr=192.168.10.2.
>>>>
>>>>             Upon restarting the N310 by manually pressing the power
>>>>             button, it is able to be found by uhd_find_devices, and
>>>>             I can continue running the script until the error
>>>>             happens, and I have to go manually restart the USRP.
>>>>
>>>>             I am trying to make an entire automated system and this
>>>>             is the one thing that requires manual effort, which is
>>>>             to get up and restart the USRP.
>>>>
>>>>             I am looking for a way to either, reboot the USRP via
>>>>             commands for when the error occurs, or a
>>>>             solution/workaround to the problem if it exists.
>>>>
>>>>             Is there any way to keep the USRP claimed and just tell
>>>>             the GNU part of the script to run each time I want to
>>>>             rerun it? Because each time I have to run the script,
>>>>             the USRP has to again be claimed and initiated. How can
>>>>             I keep it on at all times, or just skip the claiming
>>>>             step each time?
>>>>
>>>>             Thank you in advance for any help you can provide!
>>>>
>>>>             Here are the error messages:
>>>>             /[INFO] [UHD] linux; GNU C++ version 8.3.0;
>>>>             Boost_106700; UHD_3.14.0.HEAD-0-g6875d061/
>>>>             /Traceback (most recent call last):
>>>>               File
>>>>             "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>>>>             line 296, in <module>
>>>>                 main()
>>>>               File
>>>>             "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>>>>             line 284, in main
>>>>                 tb = top_block_cls()
>>>>               File
>>>>             "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>>>>             line 79, in __init__
>>>>                 channels=range(4),
>>>>               File
>>>>             "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py",
>>>>             line 122, in constructor_interceptor
>>>>                 return old_constructor(*args)
>>>>               File
>>>>             "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py",
>>>>             line 2782, in make
>>>>                 return _uhd_swig.usrp_source_make(*args)
>>>>             RuntimeError: LookupError: KeyError: No devices found
>>>>             for ----->
>>>>             Device Address:
>>>>                 addr: 192.168.10.2
>>>>                 rx_lo_source: external
>>>>                 init_cals:
>>>>             BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY/
>>>>             /
>>>>             /
>>>>             *Here is the second time it happened:*
>>>>             /[INFO] [UHD] linux; GNU C++ version 8.3.0;
>>>>             Boost_106700; UHD_3.14.0.HEAD-0-g6875d061
>>>>             [INFO] [MPMD] Initializing 1 device(s) in parallel with
>>>>             args:
>>>>             mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY
>>>>             [ERROR] [RPC] Someone tried to claim this device again
>>>>             (From: 192.168.10.1)
>>>>             Traceback (most recent call last):
>>>>               File
>>>>             "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>>>>             line 296, in <module>
>>>>                 main()
>>>>               File
>>>>             "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>>>>             line 284, in main
>>>>                 tb = top_block_cls()
>>>>               File
>>>>             "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>>>>             line 79, in __init__
>>>>                 channels=range(4),
>>>>               File
>>>>             "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py",
>>>>             line 122, in constructor_interceptor
>>>>                 return old_constructor(*args)
>>>>               File
>>>>             "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py",
>>>>             line 2782, in make
>>>>                 return _uhd_swig.usrp_source_make(*args)
>>>>             RuntimeError: RuntimeError: Error during RPC call to
>>>>             `claim'. Error message: Someone tried to claim this
>>>>             device again (From: 192.168.10.1)/*
>>>>             *
>>>>
>>>>             i\
>>>             Instead of interrupting the GR script, you could use the
>>>             "Head" block to have it run for a finite number of
>>>             samples, then exit gracefully.
>>>               When you interrupt it, some things are clearly not
>>>             getting cleaned up gracefully.
>>>
>>>
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list
>>>             USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>


--------------040501090205060900020609
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/23/2019 06:24 PM, Austin Adam
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAMKs6hdMw5DjX37q=Lvn=UD2D_xf2G3zFtuAqASS27ELb9tPjQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">For testing, I just put a simple signal source,
        added a head block, and then a QT Time sink and it seems to just
        go for a second and freeze. I am sure this is the correct way to
        do it. When it issues the 'done' is it supposed to close? Or
        send a message? Or change some variable that I then have to
        check in the code? <br>
      </div>
    </blockquote>
    When a block marks "done", that propagates inwards, and it's
    possibly the case that the QT blocks don't honor that?<br>
    <br>
    Try it with something like a null sink, or a file sink going to
    /dev/null, and see that it nicely terminates--configure your block
    for "no gui" and<br>
      "exit when done".<br>
    <br>
    This question is drifting more into Gnu Radio land, so if this
    drifts into straight-up Gnu Radio territory, the discussion should
    be held on<br>
      the discuss-gnuradio mailing list--where there are more people who
    have opinions about GR "stuff".<br>
    <br>
    <br>
    <blockquote
cite="mid:CAMKs6hdMw5DjX37q=Lvn=UD2D_xf2G3zFtuAqASS27ELb9tPjQ@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Sat, Nov 23, 2019 at 3:17
          PM Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 11/23/2019 06:06 PM, Austin Adam wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">So I just put it in between my source and
                sink and when it hits lets say 1000000 samples, it will
                automatically terminate the script? I just tried doing
                it and it doesn't seem to be working, it just sort of
                freezes up after about a second. Maybe I am not doing it
                correctly..</div>
            </blockquote>
            You put it after your source, and the rest of the graph is
            the same.<br>
            <br>
            If it just "freezes up", that's, I think, unexpected, and
            may indicate some deficiencies in flowgraph shutdown on N3xx
            hardware.<br>
            <br>
            What does you GR script look like?<br>
            <br>
            <br>
            <blockquote type="cite"><br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Sat, Nov 23, 2019
                  at 2:55 PM Marcus D. Leech &lt;<a
                    moz-do-not-send="true"
                    href="mailto:patchvonbraun@gmail.com"
                    target="_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div bgcolor="#FFFFFF">
                    <div>On 11/23/2019 05:48 PM, Austin Adam wrote:<br>
                    </div>
                    <blockquote type="cite">
                      <div dir="ltr">Hey Marcus,
                        <div>Thank you for the quick response! This
                          sounds like a good solution, could you give
                          some insight on how to go about doing it?</div>
                        <div><br>
                        </div>
                        <div>Thank you so much! <br>
                        </div>
                      </div>
                    </blockquote>
                    The "head" block takes a number, which is the count
                    of samples that it will allow through it before it
                    declares "Done", and thus causes<br>
                      clean termination of your GR Script.<br>
                    <br>
                    <br>
                    <blockquote type="cite"><br>
                      <div class="gmail_quote">
                        <div dir="ltr" class="gmail_attr">On Sat, Nov
                          23, 2019 at 2:32 PM Marcus D. Leech via
                          USRP-users &lt;<a moz-do-not-send="true"
                            href="mailto:usrp-users@lists.ettus.com"
                            target="_blank">usrp-users@lists.ettus.com</a>&gt;

                          wrote:<br>
                        </div>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div bgcolor="#FFFFFF">
                            <div>On 11/23/2019 03:49 PM, Austin Adam via
                              USRP-users wrote:<br>
                            </div>
                            <blockquote type="cite">
                              <div dir="ltr">I am trying to run a Gnu
                                Radio python file via the terminal and
                                only want to run in for a few seconds
                                and then kill it. Then, wait a little
                                bit, and rerun the script again. My
                                problem is that sometimes, when I rerun
                                it, I get an issue with my USRP N310 in
                                that it decides to just disconnect with
                                either a "No devices found for" or
                                "Someone tried to claim this device
                                again" message. I have posted the error
                                messages below from two different
                                instances.
                                <div><br>
                                </div>
                                <div>
                                  <div>When this happens, running
                                    uhd_find_devices does not find the
                                    N310, neither does uhd_find_devices
                                    --args=addr=192.168.10.2.</div>
                                  <div><br>
                                  </div>
                                  <div>Upon restarting the N310 by
                                    manually pressing the power button,
                                    it is able to be found by
                                    uhd_find_devices, and I can continue
                                    running the script until the error
                                    happens, and I have to go manually
                                    restart the USRP.</div>
                                </div>
                                <div><br>
                                </div>
                                <div>I am trying to make an entire
                                  automated system and this is the one
                                  thing that requires manual effort,
                                  which is to get up and restart the
                                  USRP.</div>
                                <div><br>
                                </div>
                                <div>I am looking for a way to either,
                                  reboot the USRP via commands for when
                                  the error occurs, or a
                                  solution/workaround to the problem if
                                  it exists. </div>
                                <div><br>
                                </div>
                                <div>Is there any way to keep the USRP
                                  claimed and just tell the GNU part of
                                  the script to run each time I want to
                                  rerun it? Because each time I have to
                                  run the script, the USRP has to again
                                  be claimed and initiated. How can I
                                  keep it on at all times, or just skip
                                  the claiming step each time?</div>
                                <div><br>
                                </div>
                                <div>Thank you in advance for any help
                                  you can provide!</div>
                                <div><br>
                                </div>
                                <div>Here are the error messages:</div>
                                <div><i>[INFO] [UHD] linux; GNU C++
                                    version 8.3.0; Boost_106700;
                                    UHD_3.14.0.HEAD-0-g6875d061</i></div>
                                <i>Traceback (most recent call last):<br>
                                    File
                                  "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
                                  line 296, in &lt;module&gt;<br>
                                      main()<br>
                                    File
                                  "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
                                  line 284, in main<br>
                                      tb = top_block_cls()<br>
                                    File
                                  "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
                                  line 79, in __init__<br>
                                      channels=range(4),<br>
                                    File
                                  "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py",
                                  line 122, in constructor_interceptor<br>
                                      return old_constructor(*args)<br>
                                    File
                                  "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py",
                                  line 2782, in make<br>
                                      return
                                  _uhd_swig.usrp_source_make(*args)<br>
                                  RuntimeError: LookupError: KeyError:
                                  No devices found for -----&gt;<br>
                                  Device Address:<br>
                                      addr: 192.168.10.2<br>
                                      rx_lo_source: external<br>
                                      init_cals:
BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY</i><br>
                                <div><i><br>
                                  </i></div>
                                <div><b>Here is the second time it
                                    happened:</b></div>
                                <div><i>[INFO] [UHD] linux; GNU C++
                                    version 8.3.0; Boost_106700;
                                    UHD_3.14.0.HEAD-0-g6875d061<br>
                                    [INFO] [MPMD] Initializing 1
                                    device(s) in parallel with args:
mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY<br>
                                    [ERROR] [RPC] Someone tried to claim
                                    this device again (From:
                                    192.168.10.1)<br>
                                    Traceback (most recent call last):<br>
                                      File
                                    "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
                                    line 296, in &lt;module&gt;<br>
                                        main()<br>
                                      File
                                    "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
                                    line 284, in main<br>
                                        tb = top_block_cls()<br>
                                      File
                                    "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
                                    line 79, in __init__<br>
                                        channels=range(4),<br>
                                      File
                                    "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py",
                                    line 122, in constructor_interceptor<br>
                                        return old_constructor(*args)<br>
                                      File
                                    "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py",
                                    line 2782, in make<br>
                                        return
                                    _uhd_swig.usrp_source_make(*args)<br>
                                    RuntimeError: RuntimeError: Error
                                    during RPC call to `claim'. Error
                                    message: Someone tried to claim this
                                    device again (From: 192.168.10.1)</i><b><br>
                                  </b></div>
                              </div>
                              <br>
                              i\<br>
                            </blockquote>
                            Instead of interrupting the GR script, you
                            could use the "Head" block to have it run
                            for a finite number of samples, then exit
                            gracefully.<br>
                              When you interrupt it, some things are
                            clearly not getting cleaned up gracefully.<br>
                            <br>
                            <br>
                            <br>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list<br>
                          <a moz-do-not-send="true"
                            href="mailto:USRP-users@lists.ettus.com"
                            target="_blank">USRP-users@lists.ettus.com</a><br>
                          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040501090205060900020609--


--===============1975961448510860454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1975961448510860454==--

