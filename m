Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2D05B21FF
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 17:23:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A0D6383D7E
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 11:23:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662650623; bh=6tYxLubsHDPqOwQ1n4xjgpgAJsXSFwj5MUbVfosM+tM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iVEHrckQ1ngDAqpDko1QRQmV6sOdl5XwtN3DZ35Ny/YNLXLkd+IsSkxeNjV37uWzo
	 ZPbOoxzE1XmjJJiO26cncFME4pA6lPSa1PftCt94eBfBXSOLQoKlRuGyEfn7oCxZAN
	 8mbIqgoZE6jXjcsbv+M6MNkHZkZVCkWFGLQgUppIB4MrUAUmLYuRgmxQkvBu3t6OUo
	 LZ7iIoJU0HboSY3czIiNQFzgepC/D7jwIB5DQGxPnbB0pJUXtdM7VRUMVnfccEEB+B
	 6QysfDApUfNXs3WeW6kE9GmY+rrvk9K3KrX7An9Xnhtgji7tRXD1unWp3lAGm8vbOP
	 pDF/2nyPMjT1w==
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C97FB383CE9
	for <usrp-users@lists.ettus.com>; Thu,  8 Sep 2022 11:22:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=integrasys-sa-com.20210112.gappssmtp.com header.i=@integrasys-sa-com.20210112.gappssmtp.com header.b="h+Ptpg8I";
	dkim-atps=neutral
Received: by mail-pj1-f48.google.com with SMTP id q3so18115836pjg.3
        for <usrp-users@lists.ettus.com>; Thu, 08 Sep 2022 08:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=integrasys-sa-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=tzQ4BQUL4hklQ/fIv1XGmUW5ClV+Tmb26/huxHat3yA=;
        b=h+Ptpg8I/82Vp9QoK/eiIifqB2HcIq3SkoBZWueHVTk1tL5ExuPHYtTeMfMszDonBc
         6ciH7X/OypSUeaX04wJAB9EF5z4+i5LyvAbjbTqtDCBsNi8bfdx64/9H14HMGX4clgxU
         QGgqk/gwQPRc80p/qu9nyRuemK2JMcmkXVFZdoBf3V9EdEfnAHBjvIvy8XJAv+5G06Zs
         ytKJF8PxzTxLC8M1kyAKY9F7kk1RIlJJQTpYuXLY9Zv9NESj2g4L7zYRNTBhS7sFvq4A
         00aM1V8Ovfce4b9kiWttQ33l/sZa98p5gcN4TXHkQQRKrKFON/fG/MLHTmBq4Hi3qkss
         ZLkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=tzQ4BQUL4hklQ/fIv1XGmUW5ClV+Tmb26/huxHat3yA=;
        b=RWws6c5C/rcRW+Mu5pAUfsnTIP9xjSmfoFnvU6l5Cxvr1gToC3aERT2eEA8DkhPzig
         GG4/R6GPGbfhBx/nRAW1mcEuQDypI2WyOzhU0wm2EGCJrXHku1xzFUsWGnNDGRrA0aXu
         x6YYNuPZq+xfPS0Shg/kV28XlhS0xZtiGbJVByL1+RQi/XRs6i2hu60JmVyLTe1MBVZb
         7WqkKWgGwlYVt6Qpxuj7eh70yTBK9k6cXfHDnvm18I7z8FTdkm9SvCBigpNkAvgrvUZy
         gRM6vUhMgc/E3ThqBnfcJ0GTytbzFuLCw/+Az6I+XiRtmMm3sImD8Pkks5dXmX2//bhD
         xWYw==
X-Gm-Message-State: ACgBeo14eBTSuz4xc2eP8MuQ9nRJjhSfQgbFuUQ2+C5WeXsQsLr8MRVn
	z1rRny2DUwk/jZJ7EZq/Epx4aX9+I9hGsoWBON1p2XmhzRw=
X-Google-Smtp-Source: AA6agR5flpX8DO9iqcAHW/Vbu0ONrDNjeiiBuBCs881sIVVd0IfpH9eTJPZXBqBOjRu9R/dZD1iSSnEUzKn4XsaqkG0=
X-Received: by 2002:a17:90a:c402:b0:1f8:c335:d4d7 with SMTP id
 i2-20020a17090ac40200b001f8c335d4d7mr4811880pjt.242.1662650550077; Thu, 08
 Sep 2022 08:22:30 -0700 (PDT)
MIME-Version: 1.0
References: <YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8@lists.ettus.com>
 <CAB__hTSx=35DRBFwSuhTP54M-+yOXGpvJCouEu1q0iUAa82cpg@mail.gmail.com>
 <CAB__hTQj71KwcgLjOBYQdPLZ1K0L_JrRTh-CHp-JpG3OorhfxQ@mail.gmail.com>
 <CAP0o2sxysF4arBUXbf7-TUWv2gmsvc0nZ99e1g8XgQgJTqxhhA@mail.gmail.com>
 <CAFche=hpgCdrAs8OiWdcfqiubXt7NiNXtn3bVhfF8Fs=BAXhiw@mail.gmail.com>
 <CAP0o2szT7DJYWR_+CHeWLNRWhTPyZnM7y+7mVSHk93AHhAkrVg@mail.gmail.com>
 <CAFche=gcMcxK6-4vMpS9n7k-eV8JUZZacj=FRryOu=kd+ACywg@mail.gmail.com>
 <CAP0o2swJKe3SuHGtnZV12u0-G00TvTE5Ds5Peb7Em911qT5yUg@mail.gmail.com>
 <CAFche=jPOUCx+KjqfQHHxpiVMdqxdX_Xc7-4TgPiYE1jzsWs7g@mail.gmail.com>
 <CAP0o2syAqrQJtZrtHdfi9bbgn+VmpbZ_4cVzPgwXRPD6rcEyOw@mail.gmail.com>
 <36a083d4-631d-6299-032d-f546b4ca3163@o2.pl> <CAB__hTQdfskJ-fH6bfDwavJuEre8gK441Pu0hCqjRk1g++iSZA@mail.gmail.com>
In-Reply-To: <CAB__hTQdfskJ-fH6bfDwavJuEre8gK441Pu0hCqjRk1g++iSZA@mail.gmail.com>
From: =?UTF-8?Q?Adri=C3=A1n_Campos_Ramos?= <adrian.campos@integrasys-sa.com>
Date: Thu, 8 Sep 2022 17:22:18 +0200
Message-ID: <CAP0o2syYyYgokT5Chqp7fzDMXp0gaLrVHGseGM=EGLtQbYyxrw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="0000000000006cc64a05e82bff40"
Message-ID-Hash: KRN5NNJXGBM6CMIJXK7QE5LCBJ5LJBHJ
X-Message-ID-Hash: KRN5NNJXGBM6CMIJXK7QE5LCBJ5LJBHJ
X-MailFrom: adrian.campos@integrasys-sa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI_RAM_FIFO Controller
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KRN5NNJXGBM6CMIJXK7QE5LCBJ5LJBHJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--0000000000006cc64a05e82bff40
Content-Type: multipart/alternative; boundary="0000000000006cc64805e82bff3e"

--0000000000006cc64805e82bff3e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The same



El mi=C3=A9, 7 sept 2022 a las 18:19, Rob Kossler (<rkossler@nd.edu>) escri=
bi=C3=B3:

> You mentioned that your error happens when running from gnuradio.  What
> happens if you remove gnuradio from the equation and run "uhd_usrp_probe"=
?
> Do you still get the error?
> Rob
>
> On Wed, Sep 7, 2022 at 10:31 AM Piotr Krysik <perper@o2.pl> wrote:
>
>> Hi Adri=C3=A1n,
>>
>> This error mean that the block didn't respond to a control message
>> during initialization.
>>
>> I've seen such errors when element of RFNoC graphs wasn't working
>> correctly.
>> Those situations were when:
>> 1. replay block wasn't working correctly due to wrong clock for DDR
>> SDRAM controller module,
>> 2. I removed implementation of one of Ethernet ports (in order to get
>> quicker builds in Vivado) but its end-point was left in the RFNoC graph.
>> So it was probed during initialization but there was nothing that could
>> respond.
>>
>> Best Regards,
>> Piotr Krysik
>>
>> W dniu 06.09.2022 o 14:59, Adri=C3=A1n Campos Ramos pisze:
>> > HI everyone
>> >
>> > Thank you very much. I made a controller and, according to the
>> > simulation, it's working fine, at least as I wanted. However, I am
>> > facing problems to implementate in the fpga. There is not problem when
>> > i generate the .bit buf when i call in gnuradio, this error appears:
>> >
>> > WARNING] [UDP] The current send_buff_size of 212992 is less than the
>> > minimum recommended size of 307200 and may result in dropped packets
>> > on some NICs
>> > [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/DmaFIFO#=
0!
>> > [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
>> > RfnocError: OpTimeout: Control operation timed out waiting for ACK
>> > Traceback (most recent call last):
>> >   File
>> > "/home/integrasys/rfnoc/src/uhd/fpga/usrp3/top/e320/build/untitled.py"=
,
>> > line 181, in <module>
>> >     main()
>> >   File
>> > "/home/integrasys/rfnoc/src/uhd/fpga/usrp3/top/e320/build/untitled.py"=
,
>> > line 157, in main
>> >     tb =3D top_block_cls()
>> >   File
>> > "/home/integrasys/rfnoc/src/uhd/fpga/usrp3/top/e320/build/untitled.py"=
,
>> > line 76, in __init__
>> >     self.rfnoc_graph =3D ettus_rfnoc_graph_0 =3D
>> > ettus.rfnoc_graph(uhd.device_addr(",".join(("addr=3D192.168.1.23", '')=
)))
>> >   File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py",
>> > line 1153, in make
>> >     return _ettus_swig.rfnoc_graph_make(dev_addr)
>> > RuntimeError: RuntimeError: Failure to create rfnoc_grap
>> >
>> > I attached my image.yml:
>> >
>> >
>> > Thanks in advance.
>> >
>> > El jue, 1 sept 2022 a las 22:24, Wade Fife (<wade.fife@ettus.com>)
>> > escribi=C3=B3:
>> >
>> >     The DRAM on USRPs is half duplex, but the AXI bus is full duplex,
>> >     which makes the real world behavior more complicated. If you want
>> >     to simulate accurately for a specific USRP, you could pull in its
>> >     AXI interconnect, the Xilinx memory interface IP, and a DRAM
>> >     simulation model, then connect it together and match the USRP
>> >     design exactly, but this is a lot of work. There are examples that
>> >     are similar to this in fpga/usrp3/top/x300/sim/dram_fifo and
>> >     fpga/usrp3/top/n3xx/sim/dram_fifo. There's no example for E320,
>> >     but the idea is similar.
>> >
>> >     Wade
>> >
>> >     On Thu, Sep 1, 2022 at 5:38 AM Adri=C3=A1n Campos Ramos
>> >     <adrian.campos@integrasys-sa.com> wrote:
>> >
>> >         Thank you very much! I was testing the code and I got
>> >         something similar to what I wanted. However, in the simulation
>> >         the sim_ram is half duplex and my question is if the
>> >         implementation in the FPGA is also half or full duplex. And if
>> >         it is full, is there any way to simulate?
>> >
>> >         Thanks in advance.
>> >
>> >         Adri=C3=A1n
>> >
>> >         El mi=C3=A9, 31 ago 2022 a las 16:22, Wade Fife
>> >         (<wade.fife@ettus.com>) escribi=C3=B3:
>> >
>> >             OUT_FIFO_SIZE sets the size of the FIFO used to buffer
>> >             data read from the external DRAM. But the unit for this
>> >             parameter is log base 2 of the size. So, setting it to 20
>> >             means the output FIFO will be 2^20 words or 8 MiB
>> >             implemented in BRAM, which is too big for the FPGA to
>> >             support. You should probably leave it at the default
>> >             value. The amount of DRAM to use for the FIFO can be set
>> >             by the FIFO_ADDR_MASK parameter.
>> >
>> >             It should behave like a true FIFO. So anything you write
>> >             to the input will come out on the output, but you can
>> >             buffer up to the size of the memory you have configured.
>> >             I'm not sure I understand your application exactly, but if
>> >             you only want to capture at a specific time, then you
>> >             should add logic to only write the data to the input of
>> >             the FIFO during those times and take care to handle
>> >             overflow when the FIFO fills. And add logic on the output
>> >             to only read when you want, taking care to handle
>> >             underflow when the FIFO empties.
>> >
>> >             Wade
>> >
>> >             On Wed, Aug 31, 2022 at 4:42 AM Adri=C3=A1n Campos Ramos
>> >             <adrian.campos@integrasys-sa.com> wrote:
>> >
>> >                 Hi,
>> >
>> >                 Thank you very much, now I understand how it works and
>> >                 it runs perfectly. However, it's not what I expected
>> >                 since it does not FIFO behaviour, or I'm
>> >                 doing something wrong. What I need is a FIFO that
>> >                 stores the data of a signal when I activate a flag and
>> >                 reads when I activate another flag continuously and
>> >                 constantly. Currently, I have the FIFO implemented in
>> >                 the FPGA but it takes too much resources  so I want to
>> >                 take advantage of the E320 RAM. I think the
>> >                 axi_ram_fifo would be perfect for my project but as
>> >                 far i can see, when space =3D 0 and occupied is full, =
it
>> >                 starts to lose the continuity. On the other hand, I
>> >                 don't know why but I can't  increase the
>> >                 FIFO_OUT_SIZE. With 10 there are outputs but if i
>> >                 increase, for example, to 20 it doesn't.
>> >
>> >                 I attached a photo of the behavior of the
>> >                 input_fifo/fifo_ram/ram.
>> >                 p1.png
>> >
>> >                 El mar, 30 ago 2022 a las 19:54, Wade Fife
>> >                 (<wade.fife@ettus.com>) escribi=C3=B3:
>> >
>> >                     Hello Adri=C3=A1n,
>> >
>> >                     REG_FIFO_FULLNESS is the number of bytes currently
>> >                     stored in the RAM of the FIFO.
>> >
>> >                     FIFO_ADDR_W is a testbench parameter that defines
>> >                     the amount of memory address space to use for the
>> >                     simulated FIFOs. The unmodified testbench uses a
>> >                     single memory to test two FIFOs. So the sum of the
>> >                     memory used by both FIFOs must be less than the
>> >                     size of the memory being simulated in order for
>> >                     the testbench to work (i.e., 2 * 2**FIFO_ADDR_W
>> >                     must not exceed 2**MEM_ADDR_W).
>> >
>> >                     IN_FIFO_SIZE and OUT_FIFO_SIZE control the size of
>> >                     the input/output buffers used by the block. They
>> >                     can affect the performance of the FIFO, but must
>> >                     be large enough to hold two of the expected burst
>> >                     memory transfer size, which I think is 512 words.
>> >
>> >                     The testbench is failing because it expects the
>> >                     FIFO to be empty when the simulation begins.
>> >                     Perhaps you have started inputting values before
>> >                     it was expecting you to?
>> >
>> >                     Wade
>> >
>> >                     On Tue, Aug 30, 2022 at 3:13 AM Adri=C3=A1n Campos
>> >                     Ramos <adrian.campos@integrasys-sa.com> wrote:
>> >
>> >                         Hi everyone,
>> >
>> >                         First of all, thank you very much Rob Kossler
>> >                         for the explanation. I made a "controller"
>> >                         that sends and receives information at certain
>> >                         points in time. However, I am facing problems
>> >                         in relation to REG_FIFO_FULLNESS. I've been
>> >                         changing the values of FIFO_ADDR_W,
>> >                         IN_FIFO_SIZE and OUT_FIFO_SIZE but it didn't
>> >                         work. Furthermore, I don't understand the
>> >                         problem at all, is the input fifo or the
>> >                         output fifo? or the ram?. The controller
>> >                         mentioned before has only two counters, one to
>> >                         activate the valid flag to send information
>> >                         and another to activate the ready flag to
>> >                         receive the information and, as far i could
>> >                         see, it was working until the assert.
>> >
>> >                         This is the error that returns me the
>> >                         simulation (the number that appears in the
>> >                         image is for: `ASSERT_ERROR(val64 =3D=3D 0,
>> >                         $sformatf("Incorrect REG_FIFO_FULLNESS value!
>> >                         %d",val64));
>> >
>> >                         Screenshot from 2022-08-30 10-10-52.png
>> >                         On the other hand, the data that I send to RAM
>> >                         is the value of a counter.
>> >
>> >                         I hope you can help me. Thanks in advance.
>> >
>> >                         Adri=C3=A1n Campos
>> >
>> >                         El jue, 18 ago 2022 a las 22:49, Rob Kossler
>> >                         (<rkossler@nd.edu>) escribi=C3=B3:
>> >
>> >                             Replace "upstream" with "downstream" below=
.
>> >
>> >                             On Thu, Aug 18, 2022 at 1:28 PM Rob
>> >                             Kossler <rkossler@nd.edu> wrote:
>> >
>> >                                 Hi Adrian,
>> >                                 As you indicated, the RFNoC blocks
>> >                                 axi_ram_fifo and Relay both use the
>> >                                 FPGA RAM.  axi_ram_fifo doesn't need
>> >                                 any registers for control because it
>> >                                 just accepts an AXI stream on the
>> >                                 input and forwards that exact stream
>> >                                 on the output. The "control" is in the
>> >                                 AXI tvalid/tready handshaking. Thus,
>> >                                 if the upstream block is not ready,
>> >                                 the FIFO starts filling up but does
>> >                                 not empty until the upstream block is
>> >                                 ready.  But, for the Replay block,
>> >                                 this block stores the incoming stream
>> >                                 to RAM until you later decide to play
>> >                                 it out.  It can be used in the
>> >                                 transmit path to load a waveform into
>> >                                 RAM such that it can be played out to
>> >                                 the Tx Radio without any help from the
>> >                                 host PC.  Or, it can be used in the
>> >                                 receive path to store receive samples
>> >                                 as they arrive (up to the given RAM
>> >                                 memory depth) and then later
>> >                                 downloaded (played out) to the host PC
>> >                                 in non-realtime.
>> >
>> >                                 While I don't know your specific
>> >                                 application, I wondered if the Replay
>> >                                 block (or the axi_ram_fifo) can
>> >                                 already implement your desired
>> >                                 functionality such that a custom block
>> >                                 is not needed.
>> >                                 Rob
>> >
>> >                                 On Thu, Aug 18, 2022 at 8:25 AM
>> >                                 <adrian.campos@integrasys-sa.com>
>> wrote:
>> >
>> >                                     I am making a custom block which
>> >                                     has to start storing data to be
>> >                                     read later, in other words store
>> >                                     the data in a FIFO. I am
>> >                                     interested in using the RAM
>> >                                     provided by the E320 so I want to
>> >                                     take advantage of the axi_ram_fifo
>> >                                     code. However, I don't really
>> >                                     understand the control of that
>> >                                     block, how can I control when to
>> >                                     start writing data to memory and
>> >                                     when to start reading it? I have
>> >                                     checked the registers in case it
>> >                                     could be controlled from there
>> >                                     like the replay block that has two
>> >                                     registers to start reading and
>> >                                     another one to do a restart but I
>> >                                     haven't seen anything like that.
>> >
>> >                                     I hope you can help me. Thank you
>> >                                     very much in advance
>> >
>> >
>> >
>>  _______________________________________________
>> >                                     USRP-users mailing list --
>> >                                     usrp-users@lists.ettus.com
>> >                                     To unsubscribe send an email to
>> >                                     usrp-users-leave@lists.ettus.com
>> >
>> >                         ______________________________________________=
_
>> >                         USRP-users mailing list --
>> >                         usrp-users@lists.ettus.com
>> >                         To unsubscribe send an email to
>> >                         usrp-users-leave@lists.ettus.com
>> >
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006cc64805e82bff3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+VGhlIHNhbWU8ZGl2Pjxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48L2Rp
dj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFp
bF9hdHRyIj5FbCBtacOpLCA3IHNlcHQgMjAyMiBhIGxhcyAxODoxOSwgUm9iIEtvc3NsZXIgKCZs
dDs8YSBocmVmPSJtYWlsdG86cmtvc3NsZXJAbmQuZWR1Ij5ya29zc2xlckBuZC5lZHU8L2E+Jmd0
OykgZXNjcmliacOzOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0
eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigy
MDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0
ciI+WW91IG1lbnRpb25lZCB0aGF0IHlvdXIgZXJyb3IgaGFwcGVucyB3aGVuIHJ1bm5pbmcgZnJv
bSBnbnVyYWRpby7CoCBXaGF0IGhhcHBlbnMgaWYgeW91IHJlbW92ZSBnbnVyYWRpbyBmcm9tIHRo
ZSBlcXVhdGlvbiBhbmQgcnVuICZxdW90O3VoZF91c3JwX3Byb2JlJnF1b3Q7PyBEbyB5b3Ugc3Rp
bGwgZ2V0IHRoZSBlcnJvcj88ZGl2PlJvYjwvZGl2PjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFp
bF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIgY2xhc3M9ImdtYWlsX2F0dHIiPk9uIFdlZCwgU2VwIDcs
IDIwMjIgYXQgMTA6MzEgQU0gUGlvdHIgS3J5c2lrICZsdDs8YSBocmVmPSJtYWlsdG86cGVycGVy
QG8yLnBsIiB0YXJnZXQ9Il9ibGFuayI+cGVycGVyQG8yLnBsPC9hPiZndDsgd3JvdGU6PGJyPjwv
ZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4
IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5n
LWxlZnQ6MWV4Ij5IaSBBZHJpw6FuLDxicj4NCjxicj4NClRoaXMgZXJyb3IgbWVhbiB0aGF0IHRo
ZSBibG9jayBkaWRuJiMzOTt0IHJlc3BvbmQgdG8gYSBjb250cm9sIG1lc3NhZ2UgPGJyPg0KZHVy
aW5nIGluaXRpYWxpemF0aW9uLjxicj4NCjxicj4NCkkmIzM5O3ZlIHNlZW4gc3VjaCBlcnJvcnMg
d2hlbiBlbGVtZW50IG9mIFJGTm9DIGdyYXBocyB3YXNuJiMzOTt0IHdvcmtpbmcgY29ycmVjdGx5
Ljxicj4NClRob3NlIHNpdHVhdGlvbnMgd2VyZSB3aGVuOjxicj4NCjEuIHJlcGxheSBibG9jayB3
YXNuJiMzOTt0IHdvcmtpbmcgY29ycmVjdGx5IGR1ZSB0byB3cm9uZyBjbG9jayBmb3IgRERSIDxi
cj4NClNEUkFNIGNvbnRyb2xsZXIgbW9kdWxlLDxicj4NCjIuIEkgcmVtb3ZlZCBpbXBsZW1lbnRh
dGlvbiBvZiBvbmUgb2YgRXRoZXJuZXQgcG9ydHMgKGluIG9yZGVyIHRvIGdldCA8YnI+DQpxdWlj
a2VyIGJ1aWxkcyBpbiBWaXZhZG8pIGJ1dCBpdHMgZW5kLXBvaW50IHdhcyBsZWZ0IGluIHRoZSBS
Rk5vQyBncmFwaC4gPGJyPg0KU28gaXQgd2FzIHByb2JlZCBkdXJpbmcgaW5pdGlhbGl6YXRpb24g
YnV0IHRoZXJlIHdhcyBub3RoaW5nIHRoYXQgY291bGQgPGJyPg0KcmVzcG9uZC48YnI+DQo8YnI+
DQpCZXN0IFJlZ2FyZHMsPGJyPg0KUGlvdHIgS3J5c2lrPGJyPg0KPGJyPg0KVyBkbml1IDA2LjA5
LjIwMjIgb8KgMTQ6NTksIEFkcmnDoW4gQ2FtcG9zIFJhbW9zIHBpc3plOjxicj4NCiZndDsgSEkg
ZXZlcnlvbmU8YnI+DQomZ3Q7PGJyPg0KJmd0OyBUaGFuayB5b3UgdmVyeSBtdWNoLiBJIG1hZGUg
YSBjb250cm9sbGVyIGFuZCwgYWNjb3JkaW5nIHRvIHRoZSA8YnI+DQomZ3Q7IHNpbXVsYXRpb24s
IGl0JiMzOTtzIHdvcmtpbmcgZmluZSzCoGF0IGxlYXN0IGFzIEkgd2FudGVkLiBIb3dldmVyLCBJ
IGFtIDxicj4NCiZndDsgZmFjaW5nIHByb2JsZW1zIHRvIGltcGxlbWVudGF0ZSBpbiB0aGUgZnBn
YS4gVGhlcmUgaXMgbm90IHByb2JsZW0gd2hlbiA8YnI+DQomZ3Q7IGkgZ2VuZXJhdGUgdGhlIC5i
aXQgYnVmIHdoZW4gaSBjYWxsIGluIGdudXJhZGlvLCB0aGlzIGVycm9yIGFwcGVhcnM6PGJyPg0K
Jmd0Ozxicj4NCiZndDsgV0FSTklOR10gW1VEUF0gVGhlIGN1cnJlbnQgc2VuZF9idWZmX3NpemUg
b2YgMjEyOTkyIGlzIGxlc3MgdGhhbiB0aGUgPGJyPg0KJmd0OyBtaW5pbXVtIHJlY29tbWVuZGVk
IHNpemUgb2YgMzA3MjAwIGFuZCBtYXkgcmVzdWx0IGluIGRyb3BwZWQgcGFja2V0cyA8YnI+DQom
Z3Q7IG9uIHNvbWUgTklDczxicj4NCiZndDsgW0VSUk9SXSBbUkZOT0M6OkdSQVBIXSBFcnJvciBk
dXJpbmcgaW5pdGlhbGl6YXRpb24gb2YgYmxvY2sgMC9EbWFGSUZPIzAhPGJyPg0KJmd0OyBbRVJS
T1JdIFtSRk5PQzo6R1JBUEhdIENhdWdodCBleGNlcHRpb24gd2hpbGUgaW5pdGlhbGl6aW5nIGdy
YXBoOiA8YnI+DQomZ3Q7IFJmbm9jRXJyb3I6IE9wVGltZW91dDogQ29udHJvbCBvcGVyYXRpb24g
dGltZWQgb3V0IHdhaXRpbmcgZm9yIEFDSzxicj4NCiZndDsgVHJhY2ViYWNrIChtb3N0IHJlY2Vu
dCBjYWxsIGxhc3QpOjxicj4NCiZndDsgwqAgRmlsZSA8YnI+DQomZ3Q7ICZxdW90Oy9ob21lL2lu
dGVncmFzeXMvcmZub2Mvc3JjL3VoZC9mcGdhL3VzcnAzL3RvcC9lMzIwL2J1aWxkL3VudGl0bGVk
LnB5JnF1b3Q7LCA8YnI+DQomZ3Q7IGxpbmUgMTgxLCBpbiAmbHQ7bW9kdWxlJmd0Ozxicj4NCiZn
dDsgwqAgwqAgbWFpbigpPGJyPg0KJmd0OyDCoCBGaWxlIDxicj4NCiZndDsgJnF1b3Q7L2hvbWUv
aW50ZWdyYXN5cy9yZm5vYy9zcmMvdWhkL2ZwZ2EvdXNycDMvdG9wL2UzMjAvYnVpbGQvdW50aXRs
ZWQucHkmcXVvdDssIDxicj4NCiZndDsgbGluZSAxNTcsIGluIG1haW48YnI+DQomZ3Q7IMKgIMKg
IHRiID0gdG9wX2Jsb2NrX2NscygpPGJyPg0KJmd0OyDCoCBGaWxlIDxicj4NCiZndDsgJnF1b3Q7
L2hvbWUvaW50ZWdyYXN5cy9yZm5vYy9zcmMvdWhkL2ZwZ2EvdXNycDMvdG9wL2UzMjAvYnVpbGQv
dW50aXRsZWQucHkmcXVvdDssIDxicj4NCiZndDsgbGluZSA3NiwgaW4gX19pbml0X188YnI+DQom
Z3Q7IMKgIMKgIHNlbGYucmZub2NfZ3JhcGggPSBldHR1c19yZm5vY19ncmFwaF8wID0gPGJyPg0K
Jmd0OyBldHR1cy5yZm5vY19ncmFwaCh1aGQuZGV2aWNlX2FkZHIoJnF1b3Q7LCZxdW90Oy5qb2lu
KCgmcXVvdDthZGRyPTE5Mi4xNjguMS4yMyZxdW90OywgJiMzOTsmIzM5OykpKSk8YnI+DQomZ3Q7
IMKgIEZpbGUgJnF1b3Q7L3Vzci9sb2NhbC9saWIvcHl0aG9uMy9kaXN0LXBhY2thZ2VzL2V0dHVz
L2V0dHVzX3N3aWcucHkmcXVvdDssIDxicj4NCiZndDsgbGluZSAxMTUzLCBpbiBtYWtlPGJyPg0K
Jmd0OyDCoCDCoCByZXR1cm4gX2V0dHVzX3N3aWcucmZub2NfZ3JhcGhfbWFrZShkZXZfYWRkcik8
YnI+DQomZ3Q7IFJ1bnRpbWVFcnJvcjogUnVudGltZUVycm9yOiBGYWlsdXJlIHRvIGNyZWF0ZSBy
Zm5vY19ncmFwPGJyPg0KJmd0Ozxicj4NCiZndDsgSSBhdHRhY2hlZCBteSBpbWFnZS55bWw6PGJy
Pg0KJmd0Ozxicj4NCiZndDs8YnI+DQomZ3Q7IFRoYW5rcyBpbiBhZHZhbmNlLjxicj4NCiZndDs8
YnI+DQomZ3Q7IEVsIGp1ZSwgMSBzZXB0IDIwMjIgYSBsYXMgMjI6MjQsIFdhZGUgRmlmZSAoJmx0
OzxhIGhyZWY9Im1haWx0bzp3YWRlLmZpZmVAZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+d2Fk
ZS5maWZlQGV0dHVzLmNvbTwvYT4mZ3Q7KSA8YnI+DQomZ3Q7IGVzY3JpYmnDszo8YnI+DQomZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgVGhlIERSQU0gb24gVVNSUHMgaXMgaGFsZiBkdXBsZXgsIGJ1dCB0
aGUgQVhJIGJ1cyBpcyBmdWxsIGR1cGxleCw8YnI+DQomZ3Q7wqAgwqAgwqB3aGljaCBtYWtlcyB0
aGUgcmVhbCB3b3JsZCBiZWhhdmlvciBtb3JlIGNvbXBsaWNhdGVkLiBJZiB5b3Ugd2FudDxicj4N
CiZndDvCoCDCoCDCoHRvIHNpbXVsYXRlIGFjY3VyYXRlbHkgZm9yIGEgc3BlY2lmaWMgVVNSUCwg
eW91IGNvdWxkIHB1bGwgaW4gaXRzPGJyPg0KJmd0O8KgIMKgIMKgQVhJIGludGVyY29ubmVjdCwg
dGhlIFhpbGlueCBtZW1vcnkgaW50ZXJmYWNlIElQLCBhbmQgYSBEUkFNPGJyPg0KJmd0O8KgIMKg
IMKgc2ltdWxhdGlvbiBtb2RlbCwgdGhlbiBjb25uZWN0IGl0IHRvZ2V0aGVyIGFuZCBtYXRjaCB0
aGUgVVNSUDxicj4NCiZndDvCoCDCoCDCoGRlc2lnbiBleGFjdGx5LCBidXQgdGhpcyBpcyBhIGxv
dCBvZiB3b3JrLiBUaGVyZSBhcmUgZXhhbXBsZXMgdGhhdDxicj4NCiZndDvCoCDCoCDCoGFyZSBz
aW1pbGFyIHRvIHRoaXMgaW4gZnBnYS91c3JwMy90b3AveDMwMC9zaW0vZHJhbV9maWZvIGFuZDxi
cj4NCiZndDvCoCDCoCDCoGZwZ2EvdXNycDMvdG9wL24zeHgvc2ltL2RyYW1fZmlmby4gVGhlcmUm
IzM5O3Mgbm8gZXhhbXBsZSBmb3IgRTMyMCw8YnI+DQomZ3Q7wqAgwqAgwqBidXQgdGhlIGlkZWEg
aXMgc2ltaWxhci48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgV2FkZTxicj4NCiZndDs8YnI+
DQomZ3Q7wqAgwqAgwqBPbiBUaHUsIFNlcCAxLCAyMDIyIGF0IDU6MzggQU0gQWRyacOhbiBDYW1w
b3MgUmFtb3M8YnI+DQomZ3Q7wqAgwqAgwqAmbHQ7PGEgaHJlZj0ibWFpbHRvOmFkcmlhbi5jYW1w
b3NAaW50ZWdyYXN5cy1zYS5jb20iIHRhcmdldD0iX2JsYW5rIj5hZHJpYW4uY2FtcG9zQGludGVn
cmFzeXMtc2EuY29tPC9hPiZndDsgd3JvdGU6PGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoFRoYW5rIHlvdSB2ZXJ5IG11Y2ghIEkgd2FzIHRlc3RpbmcgdGhlIGNvZGUgYW5kIEkgZ290
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgc29tZXRoaW5nIHNpbWlsYXIgdG8gd2hhdCBJIHdhbnRl
ZC4gSG93ZXZlciwgaW4gdGhlIHNpbXVsYXRpb248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0aGUg
c2ltX3JhbSBpcyBoYWxmIGR1cGxleCBhbmQgbXkgcXVlc3Rpb24gaXMgaWYgdGhlPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgaW1wbGVtZW50YXRpb24gaW4gdGhlIEZQR0EgaXMgYWxzbyBoYWxmIG9y
IGZ1bGwgZHVwbGV4LiBBbmQgaWY8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBpdCBpcyBmdWxsLCBp
cyB0aGVyZSBhbnkgd2F5IHRvIHNpbXVsYXRlPzxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqBUaGFua3MgaW4gYWR2YW5jZS48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
QWRyacOhbjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBFbCBtacOpLCAzMSBhZ28g
MjAyMiBhIGxhcyAxNjoyMiwgV2FkZSBGaWZlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgKCZsdDs8
YSBocmVmPSJtYWlsdG86d2FkZS5maWZlQGV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPndhZGUu
ZmlmZUBldHR1cy5jb208L2E+Jmd0OykgZXNjcmliacOzOjxicj4NCiZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqBPVVRfRklGT19TSVpFIHNldHMgdGhlIHNpemUgb2YgdGhlIEZJRk8g
dXNlZCB0byBidWZmZXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBkYXRhIHJlYWQgZnJv
bSB0aGUgZXh0ZXJuYWwgRFJBTS4gQnV0IHRoZSB1bml0IGZvciB0aGlzPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgcGFyYW1ldGVyIGlzIGxvZyBiYXNlIDIgb2YgdGhlIHNpemUuIFNvLCBz
ZXR0aW5nIGl0IHRvIDIwPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgbWVhbnMgdGhlIG91
dHB1dCBGSUZPIHdpbGwgYmUgMl4yMCB3b3JkcyBvciA4IE1pQjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoGltcGxlbWVudGVkIGluIEJSQU0sIHdoaWNoIGlzIHRvbyBiaWcgZm9yIHRoZSBG
UEdBIHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc3VwcG9ydC4gWW91IHNob3VsZCBw
cm9iYWJseSBsZWF2ZSBpdCBhdCB0aGUgZGVmYXVsdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoHZhbHVlLiBUaGUgYW1vdW50IG9mIERSQU0gdG8gdXNlIGZvciB0aGUgRklGTyBjYW4gYmUg
c2V0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgYnkgdGhlIEZJRk9fQUREUl9NQVNLIHBh
cmFtZXRlci48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSXQgc2hvdWxk
IGJlaGF2ZSBsaWtlIGEgdHJ1ZSBGSUZPLiBTbyBhbnl0aGluZyB5b3Ugd3JpdGU8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqB0byB0aGUgaW5wdXQgd2lsbCBjb21lIG91dCBvbiB0aGUgb3V0
cHV0LCBidXQgeW91IGNhbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGJ1ZmZlciB1cCB0
byB0aGUgc2l6ZSBvZiB0aGUgbWVtb3J5IHlvdSBoYXZlIGNvbmZpZ3VyZWQuPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgSSYjMzk7bSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgeW91ciBhcHBs
aWNhdGlvbiBleGFjdGx5LCBidXQgaWY8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB5b3Ug
b25seSB3YW50IHRvIGNhcHR1cmUgYXQgYSBzcGVjaWZpYyB0aW1lLCB0aGVuIHlvdTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNob3VsZCBhZGQgbG9naWMgdG8gb25seSB3cml0ZSB0aGUg
ZGF0YSB0byB0aGUgaW5wdXQgb2Y8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0aGUgRklG
TyBkdXJpbmcgdGhvc2UgdGltZXMgYW5kIHRha2UgY2FyZSB0byBoYW5kbGU8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqBvdmVyZmxvdyB3aGVuIHRoZSBGSUZPIGZpbGxzLiBBbmQgYWRkIGxv
Z2ljIG9uIHRoZSBvdXRwdXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0byBvbmx5IHJl
YWQgd2hlbiB5b3Ugd2FudCwgdGFraW5nIGNhcmUgdG8gaGFuZGxlPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgdW5kZXJmbG93IHdoZW4gdGhlIEZJRk8gZW1wdGllcy48YnI+DQomZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgV2FkZTxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqBPbiBXZWQsIEF1ZyAzMSwgMjAyMiBhdCA0OjQyIEFNIEFkcmnDoW4gQ2Ft
cG9zIFJhbW9zPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0OzxhIGhyZWY9Im1haWx0
bzphZHJpYW4uY2FtcG9zQGludGVncmFzeXMtc2EuY29tIiB0YXJnZXQ9Il9ibGFuayI+YWRyaWFu
LmNhbXBvc0BpbnRlZ3Jhc3lzLXNhLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj4NCiZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBIaSw8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgVGhhbmsgeW91IHZlcnkgbXVjaCwgbm93IEkgdW5kZXJzdGFu
ZCBob3cgaXQgd29ya3MgYW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaXQg
cnVucyBwZXJmZWN0bHkuIEhvd2V2ZXIsIGl0JiMzOTtzIG5vdCB3aGF0IEkgZXhwZWN0ZWQ8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzaW5jZSBpdCBkb2VzIG5vdCBGSUZPIGJl
aGF2aW91ciwgb3IgSSYjMzk7bTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRv
aW5nwqBzb21ldGhpbmcgd3JvbmcuIFdoYXQgSSBuZWVkIGlzIGEgRklGTyB0aGF0PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3RvcmVzIHRoZSBkYXRhIG9mIGEgc2lnbmFsIHdo
ZW4gSSBhY3RpdmF0ZSBhIGZsYWcgYW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgcmVhZHMgd2hlbiBJIGFjdGl2YXRlIGFub3RoZXIgZmxhZyBjb250aW51b3VzbHkgYW5kPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY29uc3RhbnRseS4gQ3VycmVudGx5LCBJ
IGhhdmUgdGhlIEZJRk8gaW1wbGVtZW50ZWQgaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB0aGUgRlBHQSBidXQgaXQgdGFrZXMgdG9vIG11Y2ggcmVzb3VyY2VzIMKgc28gSSB3
YW50IHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdGFrZSBhZHZhbnRhZ2Ug
b2YgdGhlIEUzMjAgUkFNLiBJIHRoaW5rIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGF4aV9yYW1fZmlmbyB3b3VsZCBiZSBwZXJmZWN0IGZvciBteSBwcm9qZWN0IGJ1dCBh
czxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZhciBpIGNhbiBzZWUsIHdoZW4g
c3BhY2UgPSAwIGFuZCBvY2N1cGllZCBpcyBmdWxsLCBpdDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHN0YXJ0cyB0byBsb3NlIHRoZSBjb250aW51aXR5LiBPbsKgdGhlIG90aGVy
IGhhbmQsIEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkb24mIzM5O3Qga25v
dyB3aHkgYnV0IEkgY2FuJiMzOTt0wqAgaW5jcmVhc2UgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgRklGT19PVVRfU0laRS4gV2l0aCAxMCB0aGVyZSBhcmUgb3V0cHV0cyBi
dXQgaWYgaTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGluY3JlYXNlLCBmb3Ig
ZXhhbXBsZSwgdG8gMjAgaXQgZG9lc24mIzM5O3QuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoEkgYXR0YWNoZWQgYSBwaG90byBvZiB0aGUgYmVoYXZpb3Igb2bC
oHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlucHV0X2ZpZm8vZmlmb19y
YW0vcmFtLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHAxLnBuZzxicj4NCiZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBFbCBtYXIsIDMwIGFnbyAyMDIy
IGEgbGFzIDE5OjU0LCBXYWRlIEZpZmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAoJmx0OzxhIGhyZWY9Im1haWx0bzp3YWRlLmZpZmVAZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+d2FkZS5maWZlQGV0dHVzLmNvbTwvYT4mZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEhlbGxvIEFkcmnDoW4sPGJyPg0K
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFJFR19GSUZPX0ZV
TExORVNTIGlzIHRoZSBudW1iZXIgb2YgYnl0ZXMgY3VycmVudGx5PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3RvcmVkIGluIHRoZSBSQU0gb2YgdGhlIEZJRk8uPGJy
Pg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEZJRk9fQURE
Ul9XIGlzIGEgdGVzdGJlbmNoIHBhcmFtZXRlciB0aGF0IGRlZmluZXM8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0aGUgYW1vdW50IG9mIG1lbW9yeSBhZGRyZXNzIHNw
YWNlIHRvIHVzZSBmb3IgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgc2ltdWxhdGVkIEZJRk9zLiBUaGUgdW5tb2RpZmllZCB0ZXN0YmVuY2ggdXNlcyBhPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc2luZ2xlIG1lbW9yeSB0byB0ZXN0
IHR3byBGSUZPcy4gU28gdGhlIHN1bSBvZiB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBtZW1vcnkgdXNlZCBieSBib3RoIEZJRk9zIG11c3QgYmUgbGVzcyB0aGFu
IHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNpemUgb2YgdGhl
IG1lbW9yeSBiZWluZyBzaW11bGF0ZWQgaW4gb3JkZXIgZm9yPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgdGhlIHRlc3RiZW5jaCB0byB3b3JrIChpLmUuLCAyICogMioq
RklGT19BRERSX1c8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBtdXN0
IG5vdCBleGNlZWQgMioqTUVNX0FERFJfVykuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoElOX0ZJRk9fU0laRSBhbmQgT1VUX0ZJRk9fU0laRSBjb250
cm9sIHRoZSBzaXplIG9mPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
dGhlIGlucHV0L291dHB1dCBidWZmZXJzIHVzZWQgYnkgdGhlIGJsb2NrLiBUaGV5PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY2FuIGFmZmVjdCB0aGUgcGVyZm9ybWFu
Y2Ugb2YgdGhlIEZJRk8sIGJ1dCBtdXN0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgYmUgbGFyZ2UgZW5vdWdoIHRvIGhvbGQgdHdvIG9mIHRoZSBleHBlY3RlZCBidXJz
dDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG1lbW9yeSB0cmFuc2Zl
ciBzaXplLCB3aGljaCBJIHRoaW5rIGlzIDUxMiB3b3Jkcy48YnI+DQomZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgVGhlIHRlc3RiZW5jaCBpcyBmYWlsaW5nIGJl
Y2F1c2UgaXQgZXhwZWN0cyB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBGSUZPIHRvIGJlIGVtcHR5IHdoZW4gdGhlIHNpbXVsYXRpb24gYmVnaW5zLjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFBlcmhhcHMgeW91IGhhdmUgc3RhcnRl
ZCBpbnB1dHRpbmcgdmFsdWVzIGJlZm9yZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGl0IHdhcyBleHBlY3RpbmcgeW91IHRvPzxicj4NCiZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBXYWRlPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoE9uIFR1ZSwgQXVnIDMwLCAyMDIyIGF0IDM6MTMg
QU0gQWRyacOhbiBDYW1wb3M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBSYW1vcyAmbHQ7PGEgaHJlZj0ibWFpbHRvOmFkcmlhbi5jYW1wb3NAaW50ZWdyYXN5cy1zYS5j
b20iIHRhcmdldD0iX2JsYW5rIj5hZHJpYW4uY2FtcG9zQGludGVncmFzeXMtc2EuY29tPC9hPiZn
dDsgd3JvdGU6PGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoEhpIGV2ZXJ5b25lLDxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBGaXJzdCBvZiBhbGwsIHRoYW5rIHlvdSB2ZXJ5IG11Y2gg
Um9iIEtvc3NsZXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBmb3IgdGhlIGV4cGxhbmF0aW9uLiBJIG1hZGUgYSAmcXVvdDtjb250cm9sbGVyJnF1b3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdGhhdCBzZW5kcyBh
bmQgcmVjZWl2ZXMgaW5mb3JtYXRpb24gYXQgY2VydGFpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBvaW50cyBpbiB0aW1lLiBIb3dldmVyLCBJIGFtIGZh
Y2luZyBwcm9ibGVtczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGluIHJlbGF0aW9uIHRvwqBSRUdfRklGT19GVUxMTkVTUy4gSSYjMzk7dmUgYmVlbjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNoYW5naW5nIHRoZSB2
YWx1ZXMgb2YgRklGT19BRERSX1csPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgSU5fRklGT19TSVpFIGFuZCBPVVRfRklGT19TSVpFIGJ1dCBpdCBkaWRuJiMz
OTt0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgd29yay4g
RnVydGhlcm1vcmUsIEkgZG9uJiMzOTt0wqB1bmRlcnN0YW5kIHRoZTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHByb2JsZW0gYXQgYWxsLCBpcyB0aGUgaW5w
dXQgZmlmbyBvciB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBvdXRwdXQgZmlmbz8gb3IgdGhlIHJhbT8uIFRoZSBjb250cm9sbGVyPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgbWVudGlvbmVkIGJlZm9yZSBoYXMg
b25seSB0d28gY291bnRlcnMsIG9uZSB0bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGFjdGl2YXRlIHRoZSB2YWxpZCBmbGFnIHRvIHNlbmQgaW5mb3JtYXRp
b248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBhbmQgYW5v
dGhlciB0byBhY3RpdmF0ZSB0aGUgcmVhZHkgZmxhZyB0bzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJlY2VpdmXCoHRoZSBpbmZvcm1hdGlvbiBhbmQsIGFz
IGZhciBpIGNvdWxkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgc2VlLCBpdCB3YXMgd29ya2luZyB1bnRpbCB0aGUgYXNzZXJ0Ljxicj4NCiZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBUaGlzIGlzIHRoZSBlcnJv
ciB0aGF0IHJldHVybnMgbWUgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgc2ltdWxhdGlvbiAodGhlIG51bWJlciB0aGF0IGFwcGVhcnMgaW4gdGhlPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW1hZ2UgaXMgZm9y
OsKgYEFTU0VSVF9FUlJPUih2YWw2NCA9PSAwLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCRzZm9ybWF0ZigmcXVvdDtJbmNvcnJlY3QgUkVHX0ZJRk9fRlVM
TE5FU1MgdmFsdWUhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgJWQmcXVvdDssdmFsNjQpKTs8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgU2NyZWVuc2hvdCBmcm9tIDIwMjItMDgtMzAgMTAtMTAtNTIu
cG5nPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgT24gdGhl
IG90aGVyIGhhbmQsIHRoZSBkYXRhIHRoYXQgSSBzZW5kwqB0byBSQU08YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpcyB0aGUgdmFsdWUgb2YgYSBjb3VudGVy
Ljxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBJIGhvcGUgeW91IGNhbiBoZWxwIG1lLiBUaGFua3MgaW4gYWR2YW5jZS48YnI+DQomZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgQWRyacOhbiBDYW1w
b3M8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgRWwganVlLCAxOCBhZ28gMjAyMiBhIGxhcyAyMjo0OSwgUm9iIEtvc3NsZXI8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAoJmx0OzxhIGhyZWY9Im1haWx0
bzpya29zc2xlckBuZC5lZHUiIHRhcmdldD0iX2JsYW5rIj5ya29zc2xlckBuZC5lZHU8L2E+Jmd0
OykgZXNjcmliacOzOjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBSZXBsYWNlICZxdW90O3Vwc3RyZWFtJnF1b3Q7IHdpdGggJnF1
b3Q7ZG93bnN0cmVhbSZxdW90OyBiZWxvdy48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgT24gVGh1LCBBdWcgMTgsIDIwMjIgYXQg
MToyOCBQTSBSb2I8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBLb3NzbGVyICZsdDs8YSBocmVmPSJtYWlsdG86cmtvc3NsZXJAbmQuZWR1IiB0YXJn
ZXQ9Il9ibGFuayI+cmtvc3NsZXJAbmQuZWR1PC9hPiZndDsgd3JvdGU6PGJyPg0KJmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEhp
IEFkcmlhbiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBBcyB5b3UgaW5kaWNhdGVkLCB0aGUgUkZOb0MgYmxvY2tzPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYXhpX3JhbV9m
aWZvIGFuZCBSZWxheSBib3RoIHVzZSB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBGUEdBIFJBTS7CoCBheGlfcmFtX2ZpZm8gZG9l
c24mIzM5O3QgbmVlZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGFueSByZWdpc3RlcnMgZm9yIGNvbnRyb2wgYmVjYXVzZSBpdDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGp1
c3QgYWNjZXB0cyBhbiBBWEkgc3RyZWFtIG9uIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlucHV0IGFuZCBmb3J3YXJkcyB0aGF0
IGV4YWN0IHN0cmVhbTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoG9uIHRoZSBvdXRwdXQuIFRoZSAmcXVvdDtjb250cm9sJnF1b3Q7IGlz
IGluIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoEFYSSB0dmFsaWQvdHJlYWR5IGhhbmRzaGFraW5nLiBUaHVzLDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIHRoZSB1
cHN0cmVhbSBibG9jayBpcyBub3QgcmVhZHksPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdGhlIEZJRk8gc3RhcnRzIGZpbGxpbmcgdXAg
YnV0IGRvZXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBub3QgZW1wdHkgdW50aWwgdGhlIHVwc3RyZWFtIGJsb2NrIGlzPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmVhZHku
wqAgQnV0LCBmb3IgdGhlIFJlcGxheSBibG9jayw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0aGlzIGJsb2NrIHN0b3JlcyB0aGUgaW5j
b21pbmcgc3RyZWFtPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgdG8gUkFNIHVudGlsIHlvdSBsYXRlciBkZWNpZGUgdG8gcGxheTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGl0
IG91dC7CoCBJdCBjYW4gYmUgdXNlZCBpbiB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0cmFuc21pdCBwYXRoIHRvIGxvYWQgYSB3
YXZlZm9ybSBpbnRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgUkFNIHN1Y2ggdGhhdCBpdCBjYW4gYmUgcGxheWVkIG91dCB0bzxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRo
ZSBUeCBSYWRpbyB3aXRob3V0IGFueSBoZWxwIGZyb20gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaG9zdCBQQy7CoCBPciwgaXQg
Y2FuIGJlIHVzZWQgaW4gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgcmVjZWl2ZSBwYXRoIHRvIHN0b3JlIHJlY2VpdmUgc2FtcGxl
czxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGFzIHRoZXkgYXJyaXZlICh1cCB0byB0aGUgZ2l2ZW4gUkFNPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgbWVtb3J5IGRlcHRoKSBh
bmQgdGhlbiBsYXRlcjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGRvd25sb2FkZWQgKHBsYXllZCBvdXQpIHRvIHRoZSBob3N0IFBDPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
aW4gbm9uLXJlYWx0aW1lLjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBXaGlsZSBJIGRvbiYjMzk7dCBrbm93IHlvdXIg
c3BlY2lmaWM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBhcHBsaWNhdGlvbiwgSSB3b25kZXJlZCBpZiB0aGUgUmVwbGF5PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYmxvY2sg
KG9yIHRoZSBheGlfcmFtX2ZpZm8pIGNhbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGFscmVhZHkgaW1wbGVtZW50IHlvdXIgZGVzaXJl
ZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGZ1bmN0aW9uYWxpdHkgc3VjaCB0aGF0IGEgY3VzdG9tIGJsb2NrPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaXMgbm90IG5lZWRl
ZC48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBSb2I8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgT24gVGh1LCBBdWcgMTgsIDIwMjIgYXQgODoyNSBBTTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCZs
dDs8YSBocmVmPSJtYWlsdG86YWRyaWFuLmNhbXBvc0BpbnRlZ3Jhc3lzLXNhLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPmFkcmlhbi5jYW1wb3NAaW50ZWdyYXN5cy1zYS5jb208L2E+Jmd0OyB3cm90ZTo8
YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgSSBhbSBtYWtpbmcgYSBjdXN0b20gYmxvY2sgd2hpY2g8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBoYXMgdG8gc3RhcnQgc3RvcmluZyBkYXRhIHRvIGJlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmVhZCBsYXRlciwgaW4g
b3RoZXIgd29yZHMgc3RvcmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0aGUgZGF0YSBpbiBhIEZJRk8uIEkgYW08YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBpbnRlcmVzdGVkIGluIHVzaW5nIHRoZSBSQU08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwcm92aWRlZCBieSB0aGUgRTMy
MCBzbyBJIHdhbnQgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0YWtlIGFkdmFudGFnZSBvZiB0aGUgYXhpX3JhbV9maWZv
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgY29kZS4gSG93ZXZlciwgSSBkb24mIzM5O3QgcmVhbGx5PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdW5kZXJz
dGFuZCB0aGUgY29udHJvbCBvZiB0aGF0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYmxvY2ssIGhvdyBjYW4gSSBjb250cm9s
IHdoZW4gdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBzdGFydCB3cml0aW5nIGRhdGEgdG8gbWVtb3J5IGFuZDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHdoZW4gdG8gc3RhcnQgcmVhZGluZyBpdD8gSSBoYXZlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY2hlY2tlZCB0aGUgcmVn
aXN0ZXJzIGluIGNhc2UgaXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjb3VsZCBiZSBjb250cm9sbGVkIGZyb20gdGhlcmU8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBsaWtlIHRoZSByZXBsYXkgYmxvY2sgdGhhdCBoYXMgdHdvPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmVnaXN0
ZXJzIHRvIHN0YXJ0IHJlYWRpbmcgYW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYW5vdGhlciBvbmUgdG8gZG8gYSByZXN0
YXJ0IGJ1dCBJPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgaGF2ZW4mIzM5O3Qgc2VlbiBhbnl0aGluZyBsaWtlIHRoYXQuPGJy
Pg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoEkgaG9wZSB5b3UgY2FuIGhlbHAgbWUuIFRoYW5rIHlvdTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHZlcnkgbXVjaCBpbiBhZHZhbmNlPGJyPg0KJmd0Ozxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208
L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0bzxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxhIGhy
ZWY9Im1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGEgaHJlZj0ibWFpbHRvOnVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0bzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDs8YnI+DQomZ3Q7PGJyPg0KJmd0OyBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NCiZndDsgVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0K
Jmd0OyBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIDxhIGhyZWY9Im1haWx0bzp1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCjxicj4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPg0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9i
bGFuayI+dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bTwvYT48YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+PC9kaXY+DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
IC0tIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b208L2E+PGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--0000000000006cc64805e82bff3e--

--0000000000006cc64a05e82bff40
Content-Type: image/png; name="prueba_error.png"
Content-Disposition: attachment; filename="prueba_error.png"
Content-Transfer-Encoding: base64
Content-ID: <f_l7t777p80>
X-Attachment-Id: f_l7t777p80

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
--0000000000006cc64a05e82bff40
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--0000000000006cc64a05e82bff40--
