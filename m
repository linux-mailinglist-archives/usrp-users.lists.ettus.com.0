Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD4B2E5A0
	for <lists+usrp-users@lfdr.de>; Wed, 29 May 2019 21:56:54 +0200 (CEST)
Received: from [::1] (port=49860 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hW4gp-0004lT-K6; Wed, 29 May 2019 15:56:47 -0400
Received: from mail-ua1-f49.google.com ([209.85.222.49]:37740)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hW4gm-0004hL-3d
 for usrp-users@lists.ettus.com; Wed, 29 May 2019 15:56:44 -0400
Received: by mail-ua1-f49.google.com with SMTP id l3so1409140uad.4
 for <usrp-users@lists.ettus.com>; Wed, 29 May 2019 12:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=J3Xd7RsD/IZYN9GMgdmTw/8svFLbiigNCu9ZLgI3Z9Q=;
 b=RC/15mqtyUGPG9hdWgkhrXO8rU1rDwLNsVNCEMg/oGo0wO2/mfuO+7LxA5lgQynTfV
 Apqdt4gG1klfWP91ysCRRwbcfe5z4P3NLWfYDgk0XymBhI0CngA8ZZKR1SlpzrsVVwRQ
 BO84/ovQ/UIcnDsl8qpHGPIR8HajdfZcUPTt+KiKxjGA0OqDyXVgNedxIVW65RuMaOFp
 sQvLi8DMKIMeILv++p+rJqyT9L3xscUecG/vN1d9eZxTK4xs3+nvOUxM4aWp4MLfTda0
 tXsuEjGpbfCztDeO9izBpbmeJEbB1PIaiOhRF5wWEZ1LBeWKQrrs2rHxktnp8/+yv+Jf
 b6Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=J3Xd7RsD/IZYN9GMgdmTw/8svFLbiigNCu9ZLgI3Z9Q=;
 b=p8zwxaJQTo/3AtYVwxCnQGOs+7+M+qtzERt/R3zq7irD4QeoyXZvoes6g52fMh27bB
 Ia4G58Z/Jwok3IgbKAVGxpZhxZDEpng7o2n7kgtdKN/HKlHvvspHapW7SUQSh7at1Knm
 Kcg5H7uAhFbyJK3Wh9RS4s9EnlBE7HWSOIf/G1MC0Wsqd6nZrnaWuZhiVSoVUT9dQ9YH
 IHchS3zbSUtRRu3hXvZ+PUvvNHCVm/8zhdAhH4pGAzSjNT6YihXL1pxY4eNpLADwTkEr
 o0F/u72j7uHsJgMvhPtAm1iD4OkkG5C93lw1zvSOyhYhbp4sRC5Lvr7tD950e9D9KoK2
 XdpA==
X-Gm-Message-State: APjAAAV+Hsy0VNKglu6SRBdYirsShR83tpQniKbZXWt1yOEq7+94yjan
 C52Qa+SJ4FHDzUE+Lx04eP5GXgjzGeI=
X-Google-Smtp-Source: APXvYqz33UaC4KwAtNXDwwEarbC6GdVxj329rahlD2nN1qshP63VLIrFmwXE1X4JkOuVWIFlZCO9aQ==
X-Received: by 2002:a9f:2c90:: with SMTP id w16mr66765924uaj.103.1559159763412; 
 Wed, 29 May 2019 12:56:03 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id b83sm732269vsd.32.2019.05.29.12.56.02
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 12:56:02 -0700 (PDT)
Message-ID: <5CEEE3D1.1050607@gmail.com>
Date: Wed, 29 May 2019 15:56:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAPRRyxvvqL9BcOW3zWNVHpuo5ZqU5ML7kGjaig9mDbxB0+jJog@mail.gmail.com>
 <5CEBFCCE.5040702@gmail.com>
 <CAPRRyxvzjOHxFgwtUh4iRRc3a8y_1W8KOLO82O--OrrzqKT2Sw@mail.gmail.com>
 <5CEDD070.3000101@gmail.com>
 <CAPRRyxsmaWpU9Z8bettAgavkmfqeZ6voceM8ajxdjkPM=ki2jQ@mail.gmail.com>
 <CAPRRyxu2m=u9QAyCkBQ76DZN1vKy-FP9soRiMO3Oib9JZcvjXw@mail.gmail.com>
In-Reply-To: <CAPRRyxu2m=u9QAyCkBQ76DZN1vKy-FP9soRiMO3Oib9JZcvjXw@mail.gmail.com>
Subject: Re: [USRP-users] Fwd:  How to escape from overflow error?
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
Content-Type: multipart/mixed; boundary="===============0841134988886212601=="
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
--===============0841134988886212601==
Content-Type: multipart/alternative;
 boundary="------------010804020001040505090600"

This is a multi-part message in MIME format.
--------------010804020001040505090600
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/29/2019 03:29 AM, Ivan Zahartchuk via USRP-users wrote:
>
>
> Yes, I expanded the buffer as suggested in the driver. I made a test 
> file for working with the board, here is its code.
> importuhd
> importnumpyasnp
> fromuhdimportlibpyuhdaslib
> importtime
> importscipy.signalassignal
> importpyqtgraphaspg
> pw = pg.plot()
> importtime
>
> num_samps=363*5
> usrp = uhd.usrp.MultiUSRP('')
> usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec('A:0'))
> print(usrp.get_pp_string())
> usrp.set_rx_rate(25e6)
> print(usrp.get_rx_rate()/1e6)
>
> stream_args=uhd.usrp.StreamArgs("fc32",'sc16')
> stream_args.channels=[0]
> rx_streamer=usrp.get_rx_stream(stream_args)
> stream_cmd=uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
> stream_cmd.num_samps=num_samps
> stream_cmd.stream_now=False
> usrp.set_time_now(uhd.types.TimeSpec(0.0))
> stream_cmd.time_spec=uhd.types.TimeSpec(0.001)
> rx_streamer.issue_stream_cmd(stream_cmd)
> md = uhd.types.RXMetadata()
> buffer_samps = rx_streamer.get_max_num_samps()
> recv_buffer = np.zeros((len([0]), buffer_samps),dtype=np.complex64)
> result = np.empty((len([0]), num_samps),dtype=np.complex64)
>
>
> deffft_slices(x):
>      #        x = self.butter_bandpass_filter(x, -12.5e6, 12.5e6, 100e6, order=6)
>      window = signal.hanning(363*5)
>      fx = np.fft.fftshift(np.fft.fft(window[np.newaxis, :] * x,axis=1))
>
>      Pxx = np.abs(fx) **2/ (np.abs(window) **2).sum()
>      Pxx[:,1:-1] *=2
>
>      Pxx =20* np.log10(Pxx **0.5)
>      returnPxx
> deffft_test(x):
>
>          sample_freq,power=signal.welch(x,fs=25e6,window="hamm",nperseg=num_samps,scaling="spectrum")
>          power=np.fft.fftshift(power)/1.5
>          return10* np.log10(power)
>
>
>
>
> whileTrue:
>
>      result = np.empty((len([0]), num_samps),dtype=np.complex64)
>      k = uhd.types.TuneRequest(np.random.randint(900e6,1000e6))
>      usrp.set_rx_freq(k)
>      whileusrp.get_rx_sensor("lo_locked").to_bool() !=True:
>          continue
>      #print(usrp.get_rx_freq())
>      recv_samps =0
>
>      whilerecv_samps < num_samps:
>
>          samps = rx_streamer.recv(recv_buffer, md)
>          time.sleep(0.001)
>
>          ifmd.error_code != lib.types.rx_metadata_error_code.none:
>              print(md.strerror())
>          ifsamps:
>              real_samps =min(num_samps - recv_samps, samps)
>              result[:, recv_samps:recv_samps + real_samps] = recv_buffer[:,0:real_samps]
>              recv_samps += real_samps
>          usrp.set_time_now(uhd.types.TimeSpec(0.0))
>          stream_cmd.time_spec = uhd.types.TimeSpec(0.001)
>          rx_streamer.issue_stream_cmd(stream_cmd)
>
>      k1=fft_test(result).ravel()
>
>      ifstr(k1[0]) =='nan':
>          print(k1[0])
>      else:
>          pw.plot(k1,clear=True)
>          pg.QtGui.QApplication.processEvents()
>
>
> But as far as I still understand, in this case I open a continuous stream of reading.  And I would like to read samples on request since I need to tune the frequency and type an array with several subranges.
>
>
> deftest_reciev_2(self, freq,bandwich):
>      #complex_buffs = np.empty((len([0]), self.samples * len(freq)))
>
>      buffs = np.empty((len([0]),self.samples *len(freq)))
>      result = np.empty((len([0]),self.samples),dtype=np.complex64)
>
>      fori, freqqinenumerate(freq):
>
>
>          # self.usrp.set_rx_rate(bandwich[i])
>          k = uhd.types.TuneRequest(freqq)
>          # k.args(uhd.types.device_addr("mode_n=integer"))
>          self.usrp.set_rx_freq(k,0)
>
>          self.streamer_rx.issue_stream_cmd(self.stream_cmd)
>          whileself.usrp.get_rx_sensor("lo_locked").to_bool() !=True:
>              continue
>          recv_samps =0
>
>          whilerecv_samps <self.samples:
>
>              samps =self.streamer_rx.recv(self.recv_buff,self.metadata_rx)
>              ifself.metadata_rx.error_code != lib.types.rx_metadata_error_code.none:
>                  print(self.metadata_rx.strerror())
>              ifsamps:
>                  real_samps =min(self.samples - recv_samps, samps)
>                  result[:, recv_samps:recv_samps + real_samps] =self.recv_buff[:,0:real_samps]
>                  recv_samps += real_samps
>          # print (self.usrp.get_rx_sensor('rssi'))
>          # print(self.streamer_rx.get_max_num_samps())
>
>          # self.stream_cmd.time_spec = lib.types.time_spec(0)
>          #self.stream_cmd.stream_now = False
>
>          #self.stream_cmd = lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
>          #self.streamer_rx.issue_stream_cmd(self.stream_cmd)
>
>          whilesamps:
>              samps =self.streamer_rx.recv(self.recv_buff,self.metadata_rx)
>
>          #complex_buffs = np.append(complex_buffs, result).ravel()
>          # correct_result=result
>          #correct_result_1 = result - (np.mean(result.real) + np.mean(result.imag) * 1j)
>          # correct_result.real=result.real-np.mean(result.real)
>          # correct_result.imag = result.imag - np.mean(result.imag)
>
>          PSD =self.fft_test(result)
>
>          # PSD[8188:8202]=np.mean(PSD[8180:8188])
>
>          buffs[:, i * value.samples:value.samples * i + value.samples] = PSD[:,0:value.samples]
>
>      returncomplex_buffs, buffs.ravel()# np.append(buffs[value.samples:],buffs[:value.samples])
>
You are going to need to reconsider your code structure.


(A) The Python API is *NOT* the way to process high-sample-rate data 
(and 25Msps is high-sample-rate in this context)
(B) You intermingle tuning and (continuous) streaming in the same 
thread, AND, insert small sleeps after receiving samples--at
       25Msps, every 1millisecond you aren't "paying attention" to the 
receive stream, there's 25,000 samples building up.
       Tuning takes a finite amount of time--it's a fundamentally analog 
process, so several milliseconds of latency for tuning
       is not unusual.



--------------010804020001040505090600
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/29/2019 03:29 AM, Ivan Zahartchuk
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAPRRyxu2m=u9QAyCkBQ76DZN1vKy-FP9soRiMO3Oib9JZcvjXw@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_quote"><br>
          <div dir="ltr">
            <div><span
                class="m_-9075795585464824595gmail-tlid-translation
                m_-9075795585464824595gmail-translation" lang="en"><span
                  title="">Yes, I expanded the buffer as suggested in
                  the driver.</span> <span title=""
                  class="m_-9075795585464824595gmail-">I made a test
                  file for working with the board, here is its code.</span></span></div>
            <div>
              <pre style="background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:&quot;DejaVu Sans Mono&quot;"><span style="color:rgb(0,0,128);font-weight:bold">import </span>uhd
<span style="color:rgb(0,0,128);font-weight:bold">import </span>numpy <span style="color:rgb(0,0,128);font-weight:bold">as </span>np
<span style="color:rgb(0,0,128);font-weight:bold">from </span>uhd <span style="color:rgb(0,0,128);font-weight:bold">import </span>libpyuhd <span style="color:rgb(0,0,128);font-weight:bold">as </span>lib
<span style="color:rgb(0,0,128);font-weight:bold">import </span>time
<span style="color:rgb(0,0,128);font-weight:bold">import </span>scipy.signal <span style="color:rgb(0,0,128);font-weight:bold">as </span>signal
<span style="color:rgb(0,0,128);font-weight:bold">import </span>pyqtgraph <span style="color:rgb(0,0,128);font-weight:bold">as </span>pg
pw = pg.plot()
<span style="color:rgb(0,0,128);font-weight:bold">import </span>time

num_samps=<span style="color:rgb(0,0,255)">363</span>*<span style="color:rgb(0,0,255)">5
</span>usrp = uhd.usrp.MultiUSRP(<span style="color:rgb(0,128,0);font-weight:bold">''</span>)
usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec(<span style="color:rgb(0,128,0);font-weight:bold">'A:0'</span>))
<span style="color:rgb(0,0,128);font-weight:bold">print</span>(usrp.get_pp_string())
usrp.set_rx_rate(<span style="color:rgb(0,0,255)">25e6</span>)
<span style="color:rgb(0,0,128);font-weight:bold">print</span>(usrp.get_rx_rate()/<span style="color:rgb(0,0,255)">1e6</span>)

stream_args=uhd.usrp.StreamArgs(<span style="color:rgb(0,128,0);font-weight:bold">"fc32"</span>,<span style="color:rgb(0,128,0);font-weight:bold">'sc16'</span>)
stream_args.channels=[<span style="color:rgb(0,0,255)">0</span>]
rx_streamer=usrp.get_rx_stream(stream_args)
stream_cmd=uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
stream_cmd.num_samps=num_samps
stream_cmd.stream_now=<span style="color:rgb(0,0,128)">False
</span>usrp.set_time_now(uhd.types.TimeSpec(<span style="color:rgb(0,0,255)">0.0</span>))
stream_cmd.time_spec=uhd.types.TimeSpec(<span style="color:rgb(0,0,255)">0.001</span>)
rx_streamer.issue_stream_cmd(stream_cmd)
md = uhd.types.RXMetadata()
buffer_samps = rx_streamer.get_max_num_samps()
recv_buffer = np.zeros((<span style="color:rgb(0,0,128)">len</span>([<span style="color:rgb(0,0,255)">0</span>]), buffer_samps), <span style="color:rgb(102,0,153)">dtype</span>=np.complex64)
result = np.empty((<span style="color:rgb(0,0,128)">len</span>([<span style="color:rgb(0,0,255)">0</span>]), num_samps), <span style="color:rgb(102,0,153)">dtype</span>=np.complex64)


<span style="color:rgb(0,0,128);font-weight:bold">def </span>fft_slices(x):
    <span style="color:rgb(128,128,128);font-style:italic">#        x = self.butter_bandpass_filter(x, -12.5e6, 12.5e6, 100e6, order=6)
</span><span style="color:rgb(128,128,128);font-style:italic">    </span>window = signal.hanning(<span style="color:rgb(0,0,255)">363</span>*<span style="color:rgb(0,0,255)">5</span>)
    fx = np.fft.fftshift(np.fft.fft(window[np.newaxis, :] * x, <span style="color:rgb(102,0,153)">axis</span>=<span style="color:rgb(0,0,255)">1</span>))

    Pxx = np.abs(fx) ** <span style="color:rgb(0,0,255)">2 </span>/ (np.abs(window) ** <span style="color:rgb(0,0,255)">2</span>).sum()
    Pxx[:, <span style="color:rgb(0,0,255)">1</span>:-<span style="color:rgb(0,0,255)">1</span>] *= <span style="color:rgb(0,0,255)">2
</span><span style="color:rgb(0,0,255)">
</span><span style="color:rgb(0,0,255)">    </span>Pxx = <span style="color:rgb(0,0,255)">20 </span>* np.log10(Pxx ** <span style="color:rgb(0,0,255)">0.5</span>)
    <span style="color:rgb(0,0,128);font-weight:bold">return </span>Pxx
<span style="color:rgb(0,0,128);font-weight:bold">def </span>fft_test(x):

        sample_freq,power=signal.welch(x,<span style="color:rgb(102,0,153)">fs</span>=<span style="color:rgb(0,0,255)">25e6</span>,<span style="color:rgb(102,0,153)">window</span>=<span style="color:rgb(0,128,0);font-weight:bold">"hamm"</span>, <span style="color:rgb(102,0,153)">nperseg</span>=num_samps,<span style="color:rgb(102,0,153)">scaling</span>=<span style="color:rgb(0,128,0);font-weight:bold">"spectrum"</span>)
        power=np.fft.fftshift(power)/<span style="color:rgb(0,0,255)">1.5
</span><span style="color:rgb(0,0,255)">        </span><span style="color:rgb(0,0,128);font-weight:bold">return </span><span style="color:rgb(0,0,255)">10 </span>* np.log10(power)




<span style="color:rgb(0,0,128);font-weight:bold">while </span><span style="color:rgb(0,0,128)">True</span>:

    result = np.empty((<span style="color:rgb(0,0,128)">len</span>([<span style="color:rgb(0,0,255)">0</span>]), num_samps), <span style="color:rgb(102,0,153)">dtype</span>=np.complex64)
    k = uhd.types.TuneRequest(np.random.randint(<span style="color:rgb(0,0,255)">900e6</span>, <span style="color:rgb(0,0,255)">1000e6</span>))
    usrp.set_rx_freq(k)
    <span style="color:rgb(0,0,128);font-weight:bold">while </span>usrp.get_rx_sensor(<span style="color:rgb(0,128,0);font-weight:bold">"lo_locked"</span>).to_bool() != <span style="color:rgb(0,0,128)">True</span>:
        <span style="color:rgb(0,0,128);font-weight:bold">continue
</span><span style="color:rgb(0,0,128);font-weight:bold">    </span><span style="color:rgb(128,128,128);font-style:italic">#print(usrp.get_rx_freq())
</span><span style="color:rgb(128,128,128);font-style:italic">    </span>recv_samps = <span style="color:rgb(0,0,255)">0
</span><span style="color:rgb(0,0,255)">
</span><span style="color:rgb(0,0,255)">    </span><span style="color:rgb(0,0,128);font-weight:bold">while </span>recv_samps &lt; num_samps:

        samps = rx_streamer.recv(recv_buffer, md)
        time.sleep(<span style="color:rgb(0,0,255)">0.001</span>)

        <span style="color:rgb(0,0,128);font-weight:bold">if </span>md.error_code != lib.types.rx_metadata_error_code.none:
            <span style="color:rgb(0,0,128);font-weight:bold">print</span>(md.strerror())
        <span style="color:rgb(0,0,128);font-weight:bold">if </span>samps:
            real_samps = <span style="color:rgb(0,0,128)">min</span>(num_samps - recv_samps, samps)
            result[:, recv_samps:recv_samps + real_samps] = recv_buffer[:, <span style="color:rgb(0,0,255)">0</span>:real_samps]
            recv_samps += real_samps
        usrp.set_time_now(uhd.types.TimeSpec(<span style="color:rgb(0,0,255)">0.0</span>))
        stream_cmd.time_spec = uhd.types.TimeSpec(<span style="color:rgb(0,0,255)">0.001</span>)
        rx_streamer.issue_stream_cmd(stream_cmd)

    k1=fft_test(result).ravel()

    <span style="color:rgb(0,0,128);font-weight:bold">if </span><span style="color:rgb(0,0,128)">str</span>(k1[<span style="color:rgb(0,0,255)">0</span>]) == <span style="color:rgb(0,128,0);font-weight:bold">'nan'</span>:
        <span style="color:rgb(0,0,128);font-weight:bold">print</span>(k1[<span style="color:rgb(0,0,255)">0</span>])
    <span style="color:rgb(0,0,128);font-weight:bold">else</span>:
        pw.plot(k1, <span style="color:rgb(102,0,153)">clear</span>=<span style="color:rgb(0,0,128)">True</span>)
        pg.QtGui.QApplication.processEvents()


<span class="m_-9075795585464824595gmail-tlid-translation m_-9075795585464824595gmail-translation" lang="en"><span title="" class="m_-9075795585464824595gmail-">But as far as I still understand, in this case I open a continuous stream of reading.</span> <span title="" class="m_-9075795585464824595gmail-">And I would like to read samples on request since I need to tune the frequency and type an array with several subranges.
<span style="color:rgb(0,0,128);font-weight:bold">

def </span>test_reciev_2(<span style="color:rgb(148,85,141)">self</span>, freq, <span style="color:rgb(128,128,128)">bandwich</span>):
    <span style="color:rgb(128,128,128);font-style:italic">#complex_buffs = np.empty((len([0]), self.samples * len(freq)))
</span><span style="color:rgb(128,128,128);font-style:italic">
</span><span style="color:rgb(128,128,128);font-style:italic">    </span>buffs = np.empty((<span style="color:rgb(0,0,128)">len</span>([<span style="color:rgb(0,0,255)">0</span>]), <span style="color:rgb(148,85,141)">self</span>.samples * <span style="color:rgb(0,0,128)">len</span>(freq)))
    result = np.empty((<span style="color:rgb(0,0,128)">len</span>([<span style="color:rgb(0,0,255)">0</span>]), <span style="color:rgb(148,85,141)">self</span>.samples), <span style="color:rgb(102,0,153)">dtype</span>=np.complex64)

    <span style="color:rgb(0,0,128);font-weight:bold">for </span>i, freqq <span style="color:rgb(0,0,128);font-weight:bold">in </span><span style="color:rgb(0,0,128)">enumerate</span>(freq):


        <span style="color:rgb(128,128,128);font-style:italic"># self.usrp.set_rx_rate(bandwich[i])
</span><span style="color:rgb(128,128,128);font-style:italic">        </span>k = uhd.types.TuneRequest(freqq)
        <span style="color:rgb(128,128,128);font-style:italic"># k.args(uhd.types.device_addr("mode_n=integer"))
</span><span style="color:rgb(128,128,128);font-style:italic">        </span><span style="color:rgb(148,85,141)">self</span>.usrp.set_rx_freq(k,<span style="color:rgb(0,0,255)">0</span>)

        <span style="color:rgb(148,85,141)">self</span>.streamer_rx.issue_stream_cmd(<span style="color:rgb(148,85,141)">self</span>.stream_cmd)
        <span style="color:rgb(0,0,128);font-weight:bold">while </span><span style="color:rgb(148,85,141)">self</span>.usrp.get_rx_sensor(<span style="color:rgb(0,128,0);font-weight:bold">"lo_locked"</span>).to_bool() != <span style="color:rgb(0,0,128)">True</span>:
            <span style="color:rgb(0,0,128);font-weight:bold">continue
</span><span style="color:rgb(0,0,128);font-weight:bold">        </span>recv_samps = <span style="color:rgb(0,0,255)">0
</span><span style="color:rgb(0,0,255)">
</span><span style="color:rgb(0,0,255)">        </span><span style="color:rgb(0,0,128);font-weight:bold">while </span>recv_samps &lt; <span style="color:rgb(148,85,141)">self</span>.samples:

            samps = <span style="color:rgb(148,85,141)">self</span>.streamer_rx.recv(<span style="color:rgb(148,85,141)">self</span>.recv_buff, <span style="color:rgb(148,85,141)">self</span>.metadata_rx)
            <span style="color:rgb(0,0,128);font-weight:bold">if </span><span style="color:rgb(148,85,141)">self</span>.metadata_rx.error_code != lib.types.rx_metadata_error_code.none:
                <span style="color:rgb(0,0,128);font-weight:bold">print</span>(<span style="color:rgb(148,85,141)">self</span>.metadata_rx.strerror())
            <span style="color:rgb(0,0,128);font-weight:bold">if </span>samps:
                real_samps = <span style="color:rgb(0,0,128)">min</span>(<span style="color:rgb(148,85,141)">self</span>.samples - recv_samps, samps)
                result[:, recv_samps:recv_samps + real_samps] = <span style="color:rgb(148,85,141)">self</span>.recv_buff[:, <span style="color:rgb(0,0,255)">0</span>:real_samps]
                recv_samps += real_samps
        <span style="color:rgb(128,128,128);font-style:italic"># print (self.usrp.get_rx_sensor('rssi'))
</span><span style="color:rgb(128,128,128);font-style:italic">        # print(self.streamer_rx.get_max_num_samps())
</span><span style="color:rgb(128,128,128);font-style:italic">
</span><span style="color:rgb(128,128,128);font-style:italic">        # self.stream_cmd.time_spec = lib.types.time_spec(0)
</span><span style="color:rgb(128,128,128);font-style:italic">        #self.stream_cmd.stream_now = False
</span><span style="color:rgb(128,128,128);font-style:italic">
</span><span style="color:rgb(128,128,128);font-style:italic">        #self.stream_cmd = lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
</span><span style="color:rgb(128,128,128);font-style:italic">        #self.streamer_rx.issue_stream_cmd(self.stream_cmd)
</span><span style="color:rgb(128,128,128);font-style:italic">
</span><span style="color:rgb(128,128,128);font-style:italic">        </span><span style="color:rgb(0,0,128);font-weight:bold">while </span>samps:
            samps = <span style="color:rgb(148,85,141)">self</span>.streamer_rx.recv(<span style="color:rgb(148,85,141)">self</span>.recv_buff, <span style="color:rgb(148,85,141)">self</span>.metadata_rx)

        <span style="color:rgb(128,128,128);font-style:italic">#complex_buffs = np.append(complex_buffs, result).ravel()
</span><span style="color:rgb(128,128,128);font-style:italic">        # correct_result=result
</span><span style="color:rgb(128,128,128);font-style:italic">        #correct_result_1 = result - (np.mean(result.real) + np.mean(result.imag) * 1j)
</span><span style="color:rgb(128,128,128);font-style:italic">        # correct_result.real=result.real-np.mean(result.real)
</span><span style="color:rgb(128,128,128);font-style:italic">        # correct_result.imag = result.imag - np.mean(result.imag)
</span><span style="color:rgb(128,128,128);font-style:italic">
</span><span style="color:rgb(128,128,128);font-style:italic">        </span>PSD = <span style="color:rgb(148,85,141)">self</span>.fft_test(result)

        <span style="color:rgb(128,128,128);font-style:italic"># PSD[8188:8202]=np.mean(PSD[8180:8188])
</span><span style="color:rgb(128,128,128);font-style:italic">
</span><span style="color:rgb(128,128,128);font-style:italic">        </span>buffs[:, i * value.samples:value.samples * i + value.samples] = PSD[:, <span style="color:rgb(0,0,255)">0</span>:value.samples]

    <span style="color:rgb(0,0,128);font-weight:bold">return </span>complex_buffs, buffs.ravel()  <span style="color:rgb(128,128,128);font-style:italic"># np.append(buffs[value.samples:],buffs[:value.samples])
</span></span></span></pre>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    You are going to need to reconsider your code structure.<br>
    <br>
    <br>
    (A) The Python API is *NOT* the way to process high-sample-rate data
    (and 25Msps is high-sample-rate in this context)<br>
    (B) You intermingle tuning and (continuous) streaming in the same
    thread, AND, insert small sleeps after receiving samples--at<br>
          25Msps, every 1millisecond you aren't "paying attention" to
    the receive stream, there's 25,000 samples building up.<br>
          Tuning takes a finite amount of time--it's a fundamentally
    analog process, so several milliseconds of latency for tuning<br>
          is not unusual.<br>
    <br>
    <br>
  </body>
</html>

--------------010804020001040505090600--


--===============0841134988886212601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0841134988886212601==--

