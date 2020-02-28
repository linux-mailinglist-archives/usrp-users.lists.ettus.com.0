Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7557517401F
	for <lists+usrp-users@lfdr.de>; Fri, 28 Feb 2020 20:12:37 +0100 (CET)
Received: from [::1] (port=53628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j7l3r-0003zT-Jn; Fri, 28 Feb 2020 14:12:35 -0500
Received: from mail-qt1-f174.google.com ([209.85.160.174]:42386)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j7l3n-0003rk-Vx
 for usrp-users@lists.ettus.com; Fri, 28 Feb 2020 14:12:32 -0500
Received: by mail-qt1-f174.google.com with SMTP id r5so2834461qtt.9
 for <usrp-users@lists.ettus.com>; Fri, 28 Feb 2020 11:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=B08JV0y6Co9Dq+PNOZQr7NNTTqC+WPYd7Vy+Miq+Mdc=;
 b=tllspbUv8fdans9+P0OoAjFnLQXfFZ3crXvqel4c/n172tzpMNQPhlJQjqUaza4PMf
 XYxI+w5n7NDb80rD6+U3UNXMdI1TZME6uwYXi7yan2+hgkZ/zQdoWb9tUtOy9GAopiIB
 BaGOoF3c2y5VOpwpouz+ufZqX2WGYaWKkeZJu6bpYcB/k9wH7O4z5hX5aX96rmspdSog
 5Qe6L2YgWXT4rKx3GuGePwuUGJi1jQmr+BsSgyWxt3luwJUMRbIZ1PseqOMnJs9wfvHS
 b0NAaojC0mRkDVhAVTdnXd6D23g58GcWJGOQ1abe+CQI79Yl+kKLEDBffMRZQ4BSgdr8
 cc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=B08JV0y6Co9Dq+PNOZQr7NNTTqC+WPYd7Vy+Miq+Mdc=;
 b=WHZWX58Wr1UGmu5z+Q9ph0qQDoYHZ3WzZLyhkDdkejkuFiG8/FXuiGFnhd2NojFJB3
 v6nYdo4xnTW5I4y5V0IaKSzH2oupCWBrp77YrkitGn4uTGM7YLFA3NiUXfrPOBqk3R5o
 D8rSi+IPCpeNn/KjfZhhL3jjGRM1hZDen/RXcuo/26dcol0K3QUuObCcrQSnh/7tPsTz
 NoJ4ORjpad8cJASpVnPjGwb/6SDCaZUk3Ajqk5zzMTBRTb7EVQR96vpmUMUF28cLtZS0
 9e9YtCzVH6z7CI98BOo5U4KOri9ydPSXpxpwNl/BQjfdAFULhhPzRGGxfl3KVIoQwwVF
 yZcQ==
X-Gm-Message-State: APjAAAX3XjuZjvnxqMBaNj9rZjSNLXBPo86RGPHXE7H3WCKw2dZKjSXk
 2TJ+5r/FRRCr1nBYTidr5Id4pSAzfNo=
X-Google-Smtp-Source: APXvYqzDdQuHweR9W4ze+uRSbnwFWbD6Xke3VeJpG+uwNSFtVbdFqIu2mWuoUNGNYToVH4JDiwNhKA==
X-Received: by 2002:ac8:768d:: with SMTP id g13mr5645165qtr.7.1582917110819;
 Fri, 28 Feb 2020 11:11:50 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id x34sm1171999qta.82.2020.02.28.11.11.49
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 11:11:50 -0800 (PST)
Message-ID: <5E5965F4.8000701@gmail.com>
Date: Fri, 28 Feb 2020 14:11:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-5b1cc46b-5622-4f42-8dcb-1c6d41c98fe3-1582849854366@3c-app-gmx-bs05>
 <trinity-8a245f68-1d88-41d1-86fa-6a3274828d1d-1582912907055@3c-app-gmx-bap56>
In-Reply-To: <trinity-8a245f68-1d88-41d1-86fa-6a3274828d1d-1582912907055@3c-app-gmx-bap56>
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:
> Hi again,
>
> I created a minimum example (gnuradio) that shows the issue described below.
> To summarize: Retuning to a different dsp frequency on an USRP X310 (+UBX160) does not work (command ignored) ONLY if a timed command (in future is used).
> The code shows it in a simple manner. Commenting out the single line with set_command_time makes the example work.
>
> I am absolutely out of ideas and would appreciate any input!
>
> Best,
> Lukas
Lukas.

Thanks for sticking with this.  I'll have a discussion with Ettus R&D to 
see if this is a known issue and/or if there's a workaround.

Remind me which version of UHD you're using?


>
> #!/usr/bin/env python2
> # -*- coding: utf-8 -*-
>
> from gnuradio import analog
> from gnuradio import gr
> from gnuradio import uhd
> import threading
> import time
>
> class switch_on_click_debug_tx_retune(gr.top_block):
>
>      def __init__(self):
>          gr.top_block.__init__(self, "Switch On Click Debug Tx Retune")
>          self.variable_function_probe_0 = variable_function_probe_0 = 0
>          self.samp_rate = samp_rate = 5e6
>          self.uhd_usrp_sink_0 = uhd.usrp_sink(",".join(("", "dboard_clock_rate=20e6")), uhd.stream_args(cpu_format="fc32", channels=range(1)))
>          self.uhd_usrp_sink_0.set_clock_rate(200e6, uhd.ALL_MBOARDS)
>          self.uhd_usrp_sink_0.set_clock_source('internal', 0)
>          self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
>          self.uhd_usrp_sink_0.set_center_freq(900e6, 0)
>          self.uhd_usrp_sink_0.set_gain(0, 0)
>
>          def _hopper():
>              i = 0
>              while True:
>                  if i % 2 == 0:
>                     fdsp = 0
>                  else:
>                     fdsp = -2e6
>                  print("Change TX dsp_freq=" + str(fdsp))
>                  tune_req_tx = uhd.tune_request()
>                  tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_NONE
>                  tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>                  tune_req_tx.rf_freq = 900e6
>                  tune_req_tx.dsp_freq = fdsp
>
>                  now = self.uhd_usrp_sink_0.get_time_now()
>                  # *** HOPPING WORKS IF THE NEXT LINE IS COMMENTED *** !!!
>                  self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.1))
>                  res1 = self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
>                  self.uhd_usrp_sink_0.clear_command_time()
>
>                  i = i + 1
>                  time.sleep(4.0)
>          _hopper_thread = threading.Thread(target=_hopper)
>          _hopper_thread.daemon = True
>          _hopper_thread.start()
>
>          self.analog_sig_source_x_1 = analog.sig_source_c(samp_rate, analog.GR_COS_WAVE, 1e6, 1, 0)
>          self.connect((self.analog_sig_source_x_1, 0), (self.uhd_usrp_sink_0, 0))
>
>      def get_samp_rate(self):
>          return self.samp_rate
>
>      def set_samp_rate(self, samp_rate):
>          self.samp_rate = samp_rate
>          self.uhd_usrp_sink_0.set_samp_rate(self.samp_rate)
>          self.analog_sig_source_x_1.set_sampling_freq(self.samp_rate)
>
> def main(top_block_cls=switch_on_click_debug_tx_retune, options=None):
>
>      tb = top_block_cls()
>      tb.start()
>      try:
>          raw_input('Press Enter to quit: ')
>      except EOFError:
>          pass
>      tb.stop()
>      tb.wait()
>
>
> if __name__ == '__main__':
>      main()
>
>
>
>
> PS: I look at the output on a spectrum analyzer and observe how the frequency changes.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>> Gesendet: Donnerstag, 27. Februar 2020 um 19:30 Uhr
>> Von: "Lukas Haase" <lukashaase@gmx.at>
>> An: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
>> Betreff: Re: How do timed commands work for two blocks (USRP Sink+USRP Source)?
>>
>> A quick update which may make things easier to debug: I am observing TX/RX on a spectrum analyzer and see if the frequency changes.
>> As soon as I enable timed command, the tune command is ignored!
>>
>> For simplicity, I am completely removing the RX parts (uhd_usrp_source_0).
>>
>> Now this works:
>>
>> tune_req_tx = uhd.tune_request()
>> tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
>> tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>> tune_req_tx.rf_freq = 900e6
>> tune_req_tx.dsp_freq = -2e6
>>
>> now = usrp_sink.get_time_now()
>> #usrp_sink.set_command_time(now + uhd.time_spec(1))
>> res1 = usrp_sink.set_center_freq(  tune_req_tx, 0)
>> usrp_sink.clear_command_time()
>>
>> When this code is executed, the signal jumps by 2 MHz at the spectrum analyzer.
>>
>> Now I only uncomment set_timed_command above:
>>
>> usrp_sink.set_command_time(now + uhd.time_spec(1))
>>
>> and repeat. NO frequency change any more!
>>
>> That means as soon as I use timed command (set_command_time) for changing the DSP frequency on a TX it is just IGNORED!
>>
>> This must be a bug ... or do I really do something fundamentally wrong?
>>
>>
>> USRP X310 with 2xUBX-160. TX/RX from dautherboard 1 is connected to spectrum analyzer.
>>
>>
>> Thank you!
>> Lukas
>>
>>
>>
>> Lukas Haase wrote:
>>> How do these timed commands work exactly when using USRP Source together with USRP Sink? (I need to phase-align RX and TX hence use timed commands at the same time).
>>> Since they are both internally use the same hardware device (and board) I feel timed commands sent to both blocks result in some unpredictable results (at least for me).
>>>
>>> For simplicity, consider this simple test setup: Loopback configuration (TX into RX via 30dB attentuator); transmit a 1MHz baseband signal into USRP Sink. Then, use just retuning via DSP:
>>>
>>>      # dsp_freq changes every time this code is called:
>>>      #dsp_freq = 0
>>>      dsp_freq = 100e3
>>>      tune_req_tx = uhd.tune_request()
>>>      tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
>>>      tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>>>      tune_req_tx.rf_freq = 900e6
>>>      tune_req_tx.dsp_freq = -dsp_freq
>>>
>>>      tune_req_rx = uhd.tune_request()
>>>      tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
>>>      tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>>>      tune_req_rx.rf_freq = 900e6
>>>      tune_req_rx.dsp_freq = dsp_freq
>>>
>>>      res1 = uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
>>>      res2 = uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
>>>
>>> This code works exactly as expected ... my received baseband signal always stays at 1 MHz (the retuning is transparent to my baseband!) but the phase always changes.
>>> This makes sense because I do not use timed commands and hence the DUC/DDC is not aligned properly.
>>>
>>> Now I change to this code:
>>>
>>>      tune_req_tx = uhd.tune_request()
>>>      tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
>>>      tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>>>      tune_req_tx.rf_freq = rf_freq
>>>      tune_req_tx.dsp_freq = -dsp_freq
>>>
>>>      tune_req_rx = uhd.tune_request()
>>>      tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_MANUAL
>>>      tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL
>>>      tune_req_rx.rf_freq = rf_freq
>>>      tune_req_rx.dsp_freq = dsp_freq
>>>
>>>      # create timed command:
>>>      now = usrp_sink.get_time_now()
>>>      uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.2))
>>>      uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.2))
>>>      res1 = uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
>>>      res2 = uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
>>>      uhd_usrp_sink_0.clear_command_time()
>>>      uhd_usrp_source_0.clear_command_time()
>>>
>>> Suddenly my frequency is offset by 100kHz. This makes totally no sense!
>>>
>>> As I mentioned above, I assume the reason is that all these timed commands eventually arrive on the same hardware and maybe overwrite themselves in a way creating unpredictable behavior.
>>>
>>> So, what is the correct way to do it (with USRP Source/Sink blocks in gnuradio)??
>>>
>>> Thanks
>>> Lukas
>>>
>>>
>>> PS: If it's multiple receiver blocks I can use the same USRP Source block with Num Channels > 1. I guess that would make live easier. But I have TX+RX to phase align.
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
