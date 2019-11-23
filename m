Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1861080E6
	for <lists+usrp-users@lfdr.de>; Sat, 23 Nov 2019 23:32:34 +0100 (CET)
Received: from [::1] (port=40382 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYdx8-0000zG-Fx; Sat, 23 Nov 2019 17:32:30 -0500
Received: from mail-qk1-f170.google.com ([209.85.222.170]:40426)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iYdx5-0000vA-GA
 for usrp-users@lists.ettus.com; Sat, 23 Nov 2019 17:32:27 -0500
Received: by mail-qk1-f170.google.com with SMTP id a137so7682481qkc.7
 for <usrp-users@lists.ettus.com>; Sat, 23 Nov 2019 14:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=iuhbmEaGCfEGnwpzrD+zc1k690g/AdhJb/QGbogkLw0=;
 b=mQhrxVOzUZtjzh7I4meSeoldGUfuixncIXCcqT606BVT39L+bs+v21dcfjkyjZZkCL
 t+RiHEd1CcZRMqxxEqH8kpWVHFa77K0ntVrEjC8qWkwQba5HobLJW0wQUQ3li51tm/29
 /Av7xd6TkjKD0B6+1sD/yKBjF3X2VJaShqfkmlNmMf0vnofuECnioyuWGMnjeqpypDuT
 3txY1++bvHehRIs2u1i/x2Bx2EiIaobMGw/z0SihrYufFTBRf5HUG9AxwgzBXD1AjCl/
 VO7jXI3YuKhCnQiyO0dU3oHRLCD1TzjQomDRZLYagzKfnl4QBICpkATA/LnO7e81oXgL
 vS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=iuhbmEaGCfEGnwpzrD+zc1k690g/AdhJb/QGbogkLw0=;
 b=SyFRhkPOWXRgXlyw0ftbSpFieCXViHYAqzsnIwQMhjngwec/BXhgo4B+v1Jv+jXB44
 Xf696tcafKnA9JUx/XORUUWgFh3tn/HLv+XdT0re1zJHDldw67J+Lpl1/PPJ69xXNitA
 JubfFm4RMFxPDXF2pX+MnlRslh5UPZGnFImq7Y0/Nt4zhSUzrNTgXLR5PuvVZCl0ixSH
 S9D7b7hBCYEW1gsYJYE8YIP6luhhoJQwxaGy6Tpc6XoyBM7rVa2uHmwAmylGQFj++vXF
 df4FEEB6Wo70LeAW5q+snGz3LRd+u8KEGrawVCB9dFoZAdUyKjR9HSrFjXl9bha+AXap
 ksyg==
X-Gm-Message-State: APjAAAVNergiUB8PHJnJi0sbGQLG1GjM6MmvmwVchyCzqBUOMvvedF/8
 +C8FVNkjzbCSjcWajneENrjQOU2Ahck=
X-Google-Smtp-Source: APXvYqy4if0+wnxTp5QbrxYsmceOb6gE5riCtngb4Wii5Tu2bliUvLziM6D3IL0chIDtoDw53lGs0A==
X-Received: by 2002:a37:dc03:: with SMTP id v3mr20199613qki.309.1574548306694; 
 Sat, 23 Nov 2019 14:31:46 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id i4sm1233271qtp.57.2019.11.23.14.31.45
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 23 Nov 2019 14:31:46 -0800 (PST)
Message-ID: <5DD9B351.5040406@gmail.com>
Date: Sat, 23 Nov 2019 17:31:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMKs6hfoUZdBUPQf5DjRdcRBjqgzAVRbT6xNVT2CncGPntAsTA@mail.gmail.com>
In-Reply-To: <CAMKs6hfoUZdBUPQf5DjRdcRBjqgzAVRbT6xNVT2CncGPntAsTA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4296764373992135955=="
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
--===============4296764373992135955==
Content-Type: multipart/alternative;
 boundary="------------000100010309070102030606"

This is a multi-part message in MIME format.
--------------000100010309070102030606
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/23/2019 03:49 PM, Austin Adam via USRP-users wrote:
> I am trying to run a Gnu Radio python file via the terminal and only 
> want to run in for a few seconds and then kill it. Then, wait a little 
> bit, and rerun the script again. My problem is that sometimes, when I 
> rerun it, I get an issue with my USRP N310 in that it decides to just 
> disconnect with either a "No devices found for" or "Someone tried to 
> claim this device again" message. I have posted the error messages 
> below from two different instances.
>
> When this happens, running uhd_find_devices does not find the N310, 
> neither does uhd_find_devices --args=addr=192.168.10.2.
>
> Upon restarting the N310 by manually pressing the power button, it is 
> able to be found by uhd_find_devices, and I can continue running the 
> script until the error happens, and I have to go manually restart the 
> USRP.
>
> I am trying to make an entire automated system and this is the one 
> thing that requires manual effort, which is to get up and restart the 
> USRP.
>
> I am looking for a way to either, reboot the USRP via commands for 
> when the error occurs, or a solution/workaround to the problem if it 
> exists.
>
> Is there any way to keep the USRP claimed and just tell the GNU part 
> of the script to run each time I want to rerun it? Because each time I 
> have to run the script, the USRP has to again be claimed and 
> initiated. How can I keep it on at all times, or just skip the 
> claiming step each time?
>
> Thank you in advance for any help you can provide!
>
> Here are the error messages:
> /[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; 
> UHD_3.14.0.HEAD-0-g6875d061/
> /Traceback (most recent call last):
>   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, 
> in <module>
>     main()
>   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 284, 
> in main
>     tb = top_block_cls()
>   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, 
> in __init__
>     channels=range(4),
>   File 
> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", 
> line 122, in constructor_interceptor
>     return old_constructor(*args)
>   File 
> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", 
> line 2782, in make
>     return _uhd_swig.usrp_source_make(*args)
> RuntimeError: LookupError: KeyError: No devices found for ----->
> Device Address:
>     addr: 192.168.10.2
>     rx_lo_source: external
>     init_cals: 
> BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY/
> /
> /
> *Here is the second time it happened:*
> /[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; 
> UHD_3.14.0.HEAD-0-g6875d061
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY
> [ERROR] [RPC] Someone tried to claim this device again (From: 
> 192.168.10.1)
> Traceback (most recent call last):
>   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, 
> in <module>
>     main()
>   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 284, 
> in main
>     tb = top_block_cls()
>   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, 
> in __init__
>     channels=range(4),
>   File 
> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", 
> line 122, in constructor_interceptor
>     return old_constructor(*args)
>   File 
> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", 
> line 2782, in make
>     return _uhd_swig.usrp_source_make(*args)
> RuntimeError: RuntimeError: Error during RPC call to `claim'. Error 
> message: Someone tried to claim this device again (From: 192.168.10.1)/*
> *
>
> i\
Instead of interrupting the GR script, you could use the "Head" block to 
have it run for a finite number of samples, then exit gracefully.
   When you interrupt it, some things are clearly not getting cleaned up 
gracefully.




--------------000100010309070102030606
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/23/2019 03:49 PM, Austin Adam via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAMKs6hfoUZdBUPQf5DjRdcRBjqgzAVRbT6xNVT2CncGPntAsTA@mail.gmail.com"
      type="cite">
      <div dir="ltr">I am trying to run a Gnu Radio python file via the
        terminal and only want to run in for a few seconds and then kill
        it. Then, wait a little bit, and rerun the script again. My
        problem is that sometimes, when I rerun it, I get an issue with
        my USRP N310 in that it decides to just disconnect with either a
        "No devices found for" or "Someone tried to claim this device
        again" message. I have posted the error messages below from two
        different instances.
        <div><br>
        </div>
        <div>
          <div>When this happens, running uhd_find_devices does not find
            the N310, neither does uhd_find_devices
            --args=addr=192.168.10.2.</div>
          <div><br>
          </div>
          <div>Upon restarting the N310 by manually pressing the power
            button, it is able to be found by uhd_find_devices, and I
            can continue running the script until the error happens, and
            I have to go manually restart the USRP.</div>
        </div>
        <div><br>
        </div>
        <div>I am trying to make an entire automated system and this is
          the one thing that requires manual effort, which is to get up
          and restart the USRP.</div>
        <div><br>
        </div>
        <div>I am looking for a way to either, reboot the USRP via
          commands for when the error occurs, or a solution/workaround
          to the problem if it exists. </div>
        <div><br>
        </div>
        <div>Is there any way to keep the USRP claimed and just tell the
          GNU part of the script to run each time I want to rerun it?
          Because each time I have to run the script, the USRP has to
          again be claimed and initiated. How can I keep it on at all
          times, or just skip the claiming step each time?</div>
        <div><br>
        </div>
        <div>Thank you in advance for any help you can provide!</div>
        <div><br>
        </div>
        <div>Here are the error messages:</div>
        <div><i>[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
            UHD_3.14.0.HEAD-0-g6875d061</i></div>
        <i>Traceback (most recent call last):<br>
            File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
          line 296, in &lt;module&gt;<br>
              main()<br>
            File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
          line 284, in main<br>
              tb = top_block_cls()<br>
            File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
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
          RuntimeError: LookupError: KeyError: No devices found for
          -----&gt;<br>
          Device Address:<br>
              addr: 192.168.10.2<br>
              rx_lo_source: external<br>
              init_cals:
BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY</i><br>
        <div><i><br>
          </i></div>
        <div><b style="">Here is the second time it happened:</b></div>
        <div><i>[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
            UHD_3.14.0.HEAD-0-g6875d061<br>
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY<br>
            [ERROR] [RPC] Someone tried to claim this device again
            (From: 192.168.10.1)<br>
            Traceback (most recent call last):<br>
              File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
            line 296, in &lt;module&gt;<br>
                main()<br>
              File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
            line 284, in main<br>
                tb = top_block_cls()<br>
              File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
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
            `claim'. Error message: Someone tried to claim this device
            again (From: 192.168.10.1)</i><b style=""><br>
          </b></div>
      </div>
      <br>
      i\<br>
    </blockquote>
    Instead of interrupting the GR script, you could use the "Head"
    block to have it run for a finite number of samples, then exit
    gracefully.<br>
      When you interrupt it, some things are clearly not getting cleaned
    up gracefully.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------000100010309070102030606--


--===============4296764373992135955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4296764373992135955==--

