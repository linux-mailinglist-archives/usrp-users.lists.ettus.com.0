Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6549E389574
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 20:34:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47F063863DA
	for <lists+usrp-users@lfdr.de>; Wed, 19 May 2021 14:34:34 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AB07385A49
	for <usrp-users@lists.ettus.com>; Wed, 19 May 2021 14:33:44 -0400 (EDT)
Date: Wed, 19 May 2021 18:33:44 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <tFTja1ZN9eE13agHS8fF7Dgs1WekbFMEtdikGEPbQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: S8Vnwge9bvGrKd6ISZo3x6BvQIKflXPyT80l1wUxfH8@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: DVCHNCBDCK66YMA6PEPTSVS2FT62YDVD
X-Message-ID-Hash: DVCHNCBDCK66YMA6PEPTSVS2FT62YDVD
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting up gr-fosphor on uhd 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DVCHNCBDCK66YMA6PEPTSVS2FT62YDVD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7617444135677939897=="

This is a multi-part message in MIME format.

--===============7617444135677939897==
Content-Type: multipart/alternative;
 boundary="b1_tFTja1ZN9eE13agHS8fF7Dgs1WekbFMEtdikGEPbQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_tFTja1ZN9eE13agHS8fF7Dgs1WekbFMEtdikGEPbQ
Content-Type: text/plain; charset=us-ascii

I would like to also add the gdb backtrace result for that segmentation fault:

```
(gdb) bt
#0  0x00007f851c000ee0 in ?? ()
#1  0x00007f85f827cd19 in ?? () from /lib/x86_64-linux-gnu/libgcc_s.so.1
#2  0x00007f85f827d605 in _Unwind_Resume () from /lib/x86_64-linux-gnu/libgcc_s.so.1
#3  0x00007f85f3de6f03 in gr::ettus::fosphor_display_impl::start() [clone .cold] () from /usr/local/lib/libgnuradio-ettus.so.3.8.0
#4  0x00007f85f374302c in gr::block_executor::block_executor(boost::shared_ptr<gr::block>, int) () from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#5  0x00007f85f379675c in gr::tpb_thread_body::tpb_thread_body(boost::shared_ptr<gr::block>, boost::shared_ptr<boost::barrier>, int) () from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#6  0x00007f85f3789f04 in boost::detail::function::void_function_obj_invoker0<gr::thread::thread_body_wrapper<gr::tpb_container>, void>::invoke(boost::detail::function::function_buffer&) ()
   from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#7  0x00007f85f37a38f8 in boost::detail::thread_data<boost::function0<void> >::run() () from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#8  0x00007f85f3c4543b in ?? () from /lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
#9  0x00007f85fa763609 in start_thread (arg=<optimized out>) at pthread_create.c:477
#10 0x00007f85fa89f293 in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:95
(gdb) disas/s  0x00007f85f827d605, +10000

Thanks
```

--b1_tFTja1ZN9eE13agHS8fF7Dgs1WekbFMEtdikGEPbQ
Content-Type: text/html; charset=us-ascii

<p>I would like to also add the gdb backtrace result for that segmentation fault:</p><p><br></p><pre><code>(gdb) bt
#0  0x00007f851c000ee0 in ?? ()
#1  0x00007f85f827cd19 in ?? () from /lib/x86_64-linux-gnu/libgcc_s.so.1
#2  0x00007f85f827d605 in _Unwind_Resume () from /lib/x86_64-linux-gnu/libgcc_s.so.1
#3  0x00007f85f3de6f03 in gr::ettus::fosphor_display_impl::start() [clone .cold] () from /usr/local/lib/libgnuradio-ettus.so.3.8.0
#4  0x00007f85f374302c in gr::block_executor::block_executor(boost::shared_ptr&lt;gr::block&gt;, int) () from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#5  0x00007f85f379675c in gr::tpb_thread_body::tpb_thread_body(boost::shared_ptr&lt;gr::block&gt;, boost::shared_ptr&lt;boost::barrier&gt;, int) () from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#6  0x00007f85f3789f04 in boost::detail::function::void_function_obj_invoker0&lt;gr::thread::thread_body_wrapper&lt;gr::tpb_container&gt;, void&gt;::invoke(boost::detail::function::function_buffer&amp;) ()
   from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#7  0x00007f85f37a38f8 in boost::detail::thread_data&lt;boost::function0&lt;void&gt; &gt;::run() () from /usr/local/lib/libgnuradio-runtime.so.3.8.2git
#8  0x00007f85f3c4543b in ?? () from /lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
#9  0x00007f85fa763609 in start_thread (arg=&lt;optimized out&gt;) at pthread_create.c:477
#10 0x00007f85fa89f293 in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:95
(gdb) disas/s  0x00007f85f827d605, +10000

Thanks</code></pre><p><br></p>


--b1_tFTja1ZN9eE13agHS8fF7Dgs1WekbFMEtdikGEPbQ--

--===============7617444135677939897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7617444135677939897==--
