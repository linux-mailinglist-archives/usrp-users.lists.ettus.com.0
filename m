Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E8E1080F4
	for <lists+usrp-users@lfdr.de>; Sat, 23 Nov 2019 23:56:16 +0100 (CET)
Received: from [::1] (port=49490 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYeK7-00033y-9V; Sat, 23 Nov 2019 17:56:15 -0500
Received: from mail-qk1-f169.google.com ([209.85.222.169]:45428)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iYeK3-0002qt-Dv
 for usrp-users@lists.ettus.com; Sat, 23 Nov 2019 17:56:11 -0500
Received: by mail-qk1-f169.google.com with SMTP id q70so9504398qke.12
 for <usrp-users@lists.ettus.com>; Sat, 23 Nov 2019 14:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=8DgiXTvEvaISrUryTr1gtXMyObt9VBn/l4mhi20ba/8=;
 b=f3s8+LVUVCkO9BpG4hZyQz1IO2K/vVhXMNO3//4n94/VOpUdj5YTJ2NLS4zCJZBih8
 JIhuhKeJuXDPX2JLCaa0+pzeulcZAB8/9SzhH03iFx1y3s+A3xi4HV4nRT3VY3/mIwQp
 1Cb5IA8EA/ZD6cFXdVqU9cVNjrzLlwaCQ5raUwDijTxjPQbhXuT9JiSSFKF9I+AOKirX
 gg6uTEYD38UrRdpWVt2pJtkPpEekyL//EwT9QlvZRuaJwygdP98C3q/61beLYqgUD7BM
 KVFbD8k2YHSCkReiDBvDpOGHH+ENmdQ/C597lxNcnAZmStsvQPaZjhMS5e3P6pZ8MWoH
 BRFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=8DgiXTvEvaISrUryTr1gtXMyObt9VBn/l4mhi20ba/8=;
 b=RQpDer1KxN3kREyAckAezTjwyRVfSMRR4aY0zWBIA3rWwwDUxwN5WXsvrnjwbrM7km
 trKzAZqImgOoujZrKraxUhnaj1hjg8uf50S/DgUp/bRJYBLu0xAPD+6U8yITd0MSnVwI
 wVosNPw6IxXL6k7OkYb/+Ns5CoazGJPzQFYZLyTCfYa3Au5w7hFb8snxddBBWo82VUYO
 RQ9UATLGoXedFUzr/9v2UwwqU+oGEz9Uug9lSdI7vt+fJ+e84BvGbJAKoBK829UBpCF8
 H2uXMMY88vqcTolhMY8X/X/IsAQflST5Y/HgT1BhSAoROoBNEObvYt6ThSv1pnsuXYcp
 hqEQ==
X-Gm-Message-State: APjAAAXhrfsdUalhFQ1axM9KRLvhmvCiH+XRPV2OX+iLElCZIzRO8Tos
 uX9KKuIw96o8j9Vof9YXR4qSAfm9rRE=
X-Google-Smtp-Source: APXvYqzVXoFieDXcIW+aJKX5O1emN0hC+1+UIirLV87a52NWmqCD7qzTusWx9I4HnOPwgKuD4SmYMg==
X-Received: by 2002:ae9:f709:: with SMTP id s9mr3415902qkg.463.1574549730709; 
 Sat, 23 Nov 2019 14:55:30 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id v7sm1276863qtk.89.2019.11.23.14.55.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 23 Nov 2019 14:55:29 -0800 (PST)
Message-ID: <5DD9B8E1.80705@gmail.com>
Date: Sat, 23 Nov 2019 17:55:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Austin Adam <austinadam42@gmail.com>
References: <CAMKs6hfoUZdBUPQf5DjRdcRBjqgzAVRbT6xNVT2CncGPntAsTA@mail.gmail.com>
 <5DD9B351.5040406@gmail.com>
 <CAMKs6heE4bsDnBi5Yvb5gzPRb3nHyd15dmK1mO0Nbwson95J0A@mail.gmail.com>
In-Reply-To: <CAMKs6heE4bsDnBi5Yvb5gzPRb3nHyd15dmK1mO0Nbwson95J0A@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6950084740646912527=="
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
--===============6950084740646912527==
Content-Type: multipart/alternative;
 boundary="------------070901020007040309010606"

This is a multi-part message in MIME format.
--------------070901020007040309010606
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/23/2019 05:48 PM, Austin Adam wrote:
> Hey Marcus,
> Thank you for the quick response! This sounds like a good solution, 
> could you give some insight on how to go about doing it?
>
> Thank you so much!
The "head" block takes a number, which is the count of samples that it 
will allow through it before it declares "Done", and thus causes
   clean termination of your GR Script.


>
> On Sat, Nov 23, 2019 at 2:32 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 11/23/2019 03:49 PM, Austin Adam via USRP-users wrote:
>>     I am trying to run a Gnu Radio python file via the terminal and
>>     only want to run in for a few seconds and then kill it. Then,
>>     wait a little bit, and rerun the script again. My problem is that
>>     sometimes, when I rerun it, I get an issue with my USRP N310 in
>>     that it decides to just disconnect with either a "No devices
>>     found for" or "Someone tried to claim this device again" message.
>>     I have posted the error messages below from two different instances.
>>
>>     When this happens, running uhd_find_devices does not find the
>>     N310, neither does uhd_find_devices --args=addr=192.168.10.2.
>>
>>     Upon restarting the N310 by manually pressing the power button,
>>     it is able to be found by uhd_find_devices, and I can continue
>>     running the script until the error happens, and I have to go
>>     manually restart the USRP.
>>
>>     I am trying to make an entire automated system and this is the
>>     one thing that requires manual effort, which is to get up and
>>     restart the USRP.
>>
>>     I am looking for a way to either, reboot the USRP via commands
>>     for when the error occurs, or a solution/workaround to the
>>     problem if it exists.
>>
>>     Is there any way to keep the USRP claimed and just tell the GNU
>>     part of the script to run each time I want to rerun it? Because
>>     each time I have to run the script, the USRP has to again be
>>     claimed and initiated. How can I keep it on at all times, or just
>>     skip the claiming step each time?
>>
>>     Thank you in advance for any help you can provide!
>>
>>     Here are the error messages:
>>     /[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
>>     UHD_3.14.0.HEAD-0-g6875d061/
>>     /Traceback (most recent call last):
>>       File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line
>>     296, in <module>
>>         main()
>>       File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line
>>     284, in main
>>         tb = top_block_cls()
>>       File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line
>>     79, in __init__
>>         channels=range(4),
>>       File
>>     "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
>>     122, in constructor_interceptor
>>         return old_constructor(*args)
>>       File
>>     "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
>>     2782, in make
>>         return _uhd_swig.usrp_source_make(*args)
>>     RuntimeError: LookupError: KeyError: No devices found for ----->
>>     Device Address:
>>         addr: 192.168.10.2
>>         rx_lo_source: external
>>         init_cals:
>>     BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY/
>>     /
>>     /
>>     *Here is the second time it happened:*
>>     /[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
>>     UHD_3.14.0.HEAD-0-g6875d061
>>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>     mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY
>>     [ERROR] [RPC] Someone tried to claim this device again (From:
>>     192.168.10.1)
>>     Traceback (most recent call last):
>>       File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line
>>     296, in <module>
>>         main()
>>       File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line
>>     284, in main
>>         tb = top_block_cls()
>>       File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line
>>     79, in __init__
>>         channels=range(4),
>>       File
>>     "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
>>     122, in constructor_interceptor
>>         return old_constructor(*args)
>>       File
>>     "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
>>     2782, in make
>>         return _uhd_swig.usrp_source_make(*args)
>>     RuntimeError: RuntimeError: Error during RPC call to `claim'.
>>     Error message: Someone tried to claim this device again (From:
>>     192.168.10.1)/*
>>     *
>>
>>     i\
>     Instead of interrupting the GR script, you could use the "Head"
>     block to have it run for a finite number of samples, then exit
>     gracefully.
>       When you interrupt it, some things are clearly not getting
>     cleaned up gracefully.
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------070901020007040309010606
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/23/2019 05:48 PM, Austin Adam
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAMKs6heE4bsDnBi5Yvb5gzPRb3nHyd15dmK1mO0Nbwson95J0A@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hey Marcus,
        <div>Thank you for the quick response! This sounds like a good
          solution, could you give some insight on how to go about doing
          it?</div>
        <div><br>
        </div>
        <div>Thank you so much! <br>
        </div>
      </div>
    </blockquote>
    The "head" block takes a number, which is the count of samples that
    it will allow through it before it declares "Done", and thus causes<br>
      clean termination of your GR Script.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAMKs6heE4bsDnBi5Yvb5gzPRb3nHyd15dmK1mO0Nbwson95J0A@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Sat, Nov 23, 2019 at 2:32
          PM Marcus D. Leech via USRP-users &lt;<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 11/23/2019 03:49 PM, Austin Adam via USRP-users
              wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">I am trying to run a Gnu Radio python file
                via the terminal and only want to run in for a few
                seconds and then kill it. Then, wait a little bit, and
                rerun the script again. My problem is that sometimes,
                when I rerun it, I get an issue with my USRP N310 in
                that it decides to just disconnect with either a "No
                devices found for" or "Someone tried to claim this
                device again" message. I have posted the error messages
                below from two different instances.
                <div><br>
                </div>
                <div>
                  <div>When this happens, running uhd_find_devices does
                    not find the N310, neither does uhd_find_devices
                    --args=addr=192.168.10.2.</div>
                  <div><br>
                  </div>
                  <div>Upon restarting the N310 by manually pressing the
                    power button, it is able to be found by
                    uhd_find_devices, and I can continue running the
                    script until the error happens, and I have to go
                    manually restart the USRP.</div>
                </div>
                <div><br>
                </div>
                <div>I am trying to make an entire automated system and
                  this is the one thing that requires manual effort,
                  which is to get up and restart the USRP.</div>
                <div><br>
                </div>
                <div>I am looking for a way to either, reboot the USRP
                  via commands for when the error occurs, or a
                  solution/workaround to the problem if it exists. </div>
                <div><br>
                </div>
                <div>Is there any way to keep the USRP claimed and just
                  tell the GNU part of the script to run each time I
                  want to rerun it? Because each time I have to run the
                  script, the USRP has to again be claimed and
                  initiated. How can I keep it on at all times, or just
                  skip the claiming step each time?</div>
                <div><br>
                </div>
                <div>Thank you in advance for any help you can provide!</div>
                <div><br>
                </div>
                <div>Here are the error messages:</div>
                <div><i>[INFO] [UHD] linux; GNU C++ version 8.3.0;
                    Boost_106700; UHD_3.14.0.HEAD-0-g6875d061</i></div>
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
                      return _uhd_swig.usrp_source_make(*args)<br>
                  RuntimeError: LookupError: KeyError: No devices found
                  for -----&gt;<br>
                  Device Address:<br>
                      addr: 192.168.10.2<br>
                      rx_lo_source: external<br>
                      init_cals:
BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY</i><br>
                <div><i><br>
                  </i></div>
                <div><b>Here is the second time it happened:</b></div>
                <div><i>[INFO] [UHD] linux; GNU C++ version 8.3.0;
                    Boost_106700; UHD_3.14.0.HEAD-0-g6875d061<br>
                    [INFO] [MPMD] Initializing 1 device(s) in parallel
                    with args:
mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY<br>
                    [ERROR] [RPC] Someone tried to claim this device
                    again (From: 192.168.10.1)<br>
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
                        return _uhd_swig.usrp_source_make(*args)<br>
                    RuntimeError: RuntimeError: Error during RPC call to
                    `claim'. Error message: Someone tried to claim this
                    device again (From: 192.168.10.1)</i><b><br>
                  </b></div>
              </div>
              <br>
              i\<br>
            </blockquote>
            Instead of interrupting the GR script, you could use the
            "Head" block to have it run for a finite number of samples,
            then exit gracefully.<br>
              When you interrupt it, some things are clearly not getting
            cleaned up gracefully.<br>
            <br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070901020007040309010606--


--===============6950084740646912527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6950084740646912527==--

