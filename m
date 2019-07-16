Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6517D6A9CB
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jul 2019 15:40:45 +0200 (CEST)
Received: from [::1] (port=48734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnNh8-00020p-Fs; Tue, 16 Jul 2019 09:40:38 -0400
Received: from mailout2n.rrzn.uni-hannover.de ([130.75.2.113]:43319)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <stolzenberg@iqo.uni-hannover.de>)
 id 1hnNh3-0001k5-Kj
 for usrp-users@lists.ettus.com; Tue, 16 Jul 2019 09:40:33 -0400
Received: from [130.75.103.90] (unknown [130.75.103.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout2n.rrzn.uni-hannover.de (Postfix) with ESMTPSA id 3FBF91F42E
 for <usrp-users@lists.ettus.com>; Tue, 16 Jul 2019 15:39:52 +0200 (CEST)
To: usrp-users@lists.ettus.com
Message-ID: <db91a3a1-ddb9-b31d-d2d9-8490dd8f751b@iqo.uni-hannover.de>
Date: Tue, 16 Jul 2019 15:39:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Subject: [USRP-users] randomness in a trigger to the GPIO at the x310
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
From: Knut Stolzenberg via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Knut Stolzenberg <stolzenberg@iqo.uni-hannover.de>
Content-Type: multipart/mixed; boundary="===============5106099019686354850=="
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
--===============5106099019686354850==
Content-Type: multipart/alternative;
 boundary="------------11B730DA41075929E0564BB3"

This is a multi-part message in MIME format.
--------------11B730DA41075929E0564BB3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hey everyone,

I experience some randomness in the timing of the ouput of my SDR, when 
applying a TTL signal to the GPIO. The TTL signal is fed to Pin 2 of the 
GPIO and has a Voltage of ~3V. It also is of arbitrary length (~10 
microseconds - several seconds). When the trigger is active it takes 
between 0.25 - 20 ms until the SDR starts streaming the data (measured 
with an oscilloscope, comparing the starting time of the trigger and 
streamed data). The data streamed is made of several hundred buffers and 
contains a modulation of the carrier frequency.

Is there any way to control the starting time of streaming, when the 
trigger was applied?

Below is a part of the code, where the "trigger" is applied. It is 
pretty much based on the tx_waveforms example code/./


#define MAN_GPIO_MASK (1 << 2)
#define ATR_MASKS (AMP_GPIO_MASK | MAN_GPIO_MASK)
// set up our values for ATR control: 1 for ATR, 0 for manual
#define ATR_CONTROL (AMP_GPIO_MASK & ~MAN_GPIO_MASK)
// set up the GPIO directions: 1 for output, 0 for input
#define GPIO_DDR  (AMP_GPIO_MASK & ~MAN_GPIO_MASK)


.....

Buffer production & stuff

...


uhd::tx_metadata_t md;
     md.start_of_burst = true;
     md.end_of_burst = true;
     md.has_time_spec = false;


     usrp->set_gpio_attr("FP0", "CTRL", 0);
     usrp->set_gpio_attr("FP0", "DDR", 0);


     while (true) {
         int readback = 0;
         if (stop_signal_called) break;
         int initialise = usrp->get_gpio_attr("FP0", "READBACK", 0);
         if (readback != initialise) {
             readback = initialise;
             if (initialise = 1)
             {
                 for (int i = 0; i < line; i++) {
                     tx_stream->send(
                         buff_ptrs[i], spb, md
                     );
                 }
             }
         }
boost::this_thread::sleep(boost::posix_time::microseconds(1));
     }


--------------11B730DA41075929E0564BB3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hey everyone,</p>
    <p>I experience some randomness in the timing of the ouput of my
      SDR, when applying a TTL signal to the GPIO. The TTL signal is fed
      to Pin 2 of the GPIO and has a Voltage of ~3V. It also is of
      arbitrary length (~10 microseconds - several seconds). When the
      trigger is active it takes between 0.25 - 20 ms until the SDR
      starts streaming the data (measured with an oscilloscope,
      comparing the starting time of the trigger and streamed data). The
      data streamed is made of several hundred buffers and contains a
      modulation of the carrier frequency.</p>
    <p>Is there any way to control the starting time of streaming, when
      the trigger was applied?</p>
    <p>Below is a part of the code, where the "trigger" is applied. It
      is pretty much based on the tx_waveforms example code<i>.</i><br>
    </p>
    <p><br>
    </p>
    <p>#define MAN_GPIO_MASK (1 &lt;&lt; 2)<br>
      #define ATR_MASKS (AMP_GPIO_MASK | MAN_GPIO_MASK)<br>
      // set up our values for ATR control: 1 for ATR, 0 for manual<br>
      #define ATR_CONTROL (AMP_GPIO_MASK &amp; ~MAN_GPIO_MASK)<br>
      // set up the GPIO directions: 1 for output, 0 for input<br>
      #define GPIO_DDR  (AMP_GPIO_MASK &amp; ~MAN_GPIO_MASK) <br>
    </p>
    <p><br>
    </p>
    <p>.....</p>
    <p>Buffer production &amp; stuff</p>
    <p>...</p>
    <p><br>
    </p>
    <p>uhd::tx_metadata_t md;<br>
          md.start_of_burst = true;<br>
          md.end_of_burst = true;<br>
          md.has_time_spec = false;<br>
        <br>
         <br>
          usrp-&gt;set_gpio_attr("FP0", "CTRL", 0);<br>
          usrp-&gt;set_gpio_attr("FP0", "DDR", 0);<br>
      <br>
          <br>
          while (true) {<br>
              int readback = 0;<br>
              if (stop_signal_called) break;<br>
              int initialise = usrp-&gt;get_gpio_attr("FP0", "READBACK",
      0);<br>
              if (readback != initialise) {<br>
                  readback = initialise;<br>
                  if (initialise = 1)<br>
                  {    <br>
                      for (int i = 0; i &lt; line; i++) {<br>
                          tx_stream-&gt;send(<br>
                              buff_ptrs[i], spb, md<br>
                          );<br>
                      }<br>
                  }<br>
              }<br>
             
      boost::this_thread::sleep(boost::posix_time::microseconds(1));<br>
          }<br>
      <br>
    </p>
  </body>
</html>

--------------11B730DA41075929E0564BB3--


--===============5106099019686354850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5106099019686354850==--

