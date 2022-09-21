Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D33DF5BFCE6
	for <lists+usrp-users@lfdr.de>; Wed, 21 Sep 2022 13:24:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84680384102
	for <lists+usrp-users@lfdr.de>; Wed, 21 Sep 2022 07:24:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663759456; bh=N134MgLVmi29k3wGUj3h6caPcPUozEXz7U7E3sKdsiE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GnaGa0+gzHTt8eaZPqA/hfiLjaEX1stQy5DK6zeFdfNTBmpylLH1gVrf7DM2ngW+w
	 JMDtoXTZaETQu4T/Wb7zk7I408lP4VSjRBS5476H4ln5MKTmY43FLrMzvLN7F9mDcX
	 4qBwLkvKBakVdD4V5VlFE468C+IcrgzYi8iAp6nG6QwZRT63M2yWZyAPFa0fkJrTH6
	 5ruz/C6QAMbQSgm6z4tlYi01vIWqvJgOv/JlPjYXrn4vrPiKl5r7UH4vZVQ8QkfwBr
	 pgnkWk2imoANF1Ynt/Y9HjnaETHbrDRkXWvAV0VJWGTPrzvjVBZNS4CDBoS/M8K3/N
	 29/rzR/MilDOw==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id B52EA3818B1
	for <usrp-users@lists.ettus.com>; Wed, 21 Sep 2022 07:23:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YGV01tkA";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id y3so12926696ejc.1
        for <usrp-users@lists.ettus.com>; Wed, 21 Sep 2022 04:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=y8jLFqyiiObwjPV49hOXGnS9AocKZ/FE6/rO4jA85OQ=;
        b=YGV01tkAmWQ4+Z6kxH89iBLvGo7hXNxjdPJHZL/lRES8Bqv2Mgjt3H2+a5qIjeaDYK
         WGZlEL4HQdlAWDxyp3bEiCKhvjAyn1vBo3pyWPj/fyDH8iagKNyHFeImcBY8SpCDkopi
         +OySAPWupmD3qaPH29c/TYODpmYkWziOhCugU+v5HD2tZjo4LG7HgI/S/G00NOfIPJAn
         oDMBAV58SpPITYxmYvLEXcIsS2wOGfopkjbcJHhSVvlZ2rn+ufTJkiaKJJlYrGt8SHmO
         TMf3uR0q7bJPJZ2PZR5mjp4zSNslG9xE1bdkk/Qg9d/dRRjU2CYwkLxO550kkDStaT2z
         3BSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=y8jLFqyiiObwjPV49hOXGnS9AocKZ/FE6/rO4jA85OQ=;
        b=fwZXTnExusOoD6X5HKmS4sy6do8LtmmorrbLnKPDzbzTs7TKD+vU3fD+Fj0YYDRjAu
         4Xk3EPYNN0HSDCuDfZqFF8MtsEGXHsq1AsuDb7imtKzPtkWfWinnk/zTYhBMt/66AmHo
         UmQxdNQu473r5kJGFUr2CEv8aYjtjgxgiu9xnlDGN5DpDmHA8RwV95B7urbzkTX6y1jB
         DmPw1RM+Z0TGvVsru97ywSzTi3athPr7aaIWfXIfh79F71rM0PsDxBaIH0+6E2LSlUx8
         ozdrJITnoy/RljelcooYFgLQx8OqnCWDKuvpM+uDEdx3EfbeZIoxlez2w30y5M+IgsQJ
         siHA==
X-Gm-Message-State: ACrzQf0M0qIEdi7kduV1R3nVN5Zl9z/MV8/ladd6gxSgEajS/mbbZu1X
	ZyHTafghLJ4z0rvkdAmsubCXV0+joS2BqxIX1MU=
X-Google-Smtp-Source: AMsMyM5IAteYlCq6XvBsbezo7uDRMKcQdUEeJdzKLdFa2U5pwHNp/Nro1TJnho7uy3hgCzU2cpIC9F/f6oQE/E50sgA=
X-Received: by 2002:a17:907:6285:b0:781:cdfe:a1e with SMTP id
 nd5-20020a170907628500b00781cdfe0a1emr5515606ejc.158.1663759386285; Wed, 21
 Sep 2022 04:23:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
 <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
 <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
 <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
 <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com>
 <CAB__hTQ8Ln5ktvkmx1ThQVQVX1mga0qCX=49YbXJtasG7emYjw@mail.gmail.com>
 <CAJhOL6dLdSL2bWPjdgcfnXL+ednwRQ1QX9tRG3mxgm3+O=486Q@mail.gmail.com>
 <CAJhOL6dUL3S-CJJHLOJTkaj86V-4axM8Ah=4_aKvAcB6WHEHyg@mail.gmail.com>
 <CAEXYVK6MeWsG3CF0LXYaOE0w5RGzAiksG1j-54kNOWYg2ZOfDg@mail.gmail.com>
 <28515f65-c0e2-4489-8563-1887cfac4265@Spark> <CAEXYVK4_xW0rgOKS1vz7R=iZkh_mg4qADnPF0uLALBhxGd71Ng@mail.gmail.com>
 <CAB__hTQ=00nz9Zyh+yfkG_V=h1yzfEDT4Rc+8=d5fxbD-sTrQw@mail.gmail.com>
 <CAL7q81u+G+W-wA18xUhFGUsQAigCWbn7MYCXvdPv7BxssYGVaA@mail.gmail.com> <CAJhOL6ftJ9H6b5E_Jd3EYUZ55Q+_LuaNBCmifScq_cPGYK0wDw@mail.gmail.com>
In-Reply-To: <CAJhOL6ftJ9H6b5E_Jd3EYUZ55Q+_LuaNBCmifScq_cPGYK0wDw@mail.gmail.com>
From: Kevin Williams <zs1kwa@gmail.com>
Date: Wed, 21 Sep 2022 13:22:28 +0200
Message-ID: <CAJhOL6d1V1YZrF6g5Y=tGFgMSE8-g3hm55yywZTEqDnHJz1=ZQ@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: ZBQOUCWDIHLO5XHPASYC6XTMM7TOCJKS
X-Message-ID-Hash: ZBQOUCWDIHLO5XHPASYC6XTMM7TOCJKS
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZBQOUCWDIHLO5XHPASYC6XTMM7TOCJKS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4512668975363837364=="

--===============4512668975363837364==
Content-Type: multipart/alternative; boundary="000000000000361bb805e92e2b8a"

--000000000000361bb805e92e2b8a
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,

I've got the i/o to registers in my core working - so the various layers of
logic from testbench through the rfnoc wrapper, control channel, my core,
and back, appear fine.

However, moving back to the chdr channel ("client interface" as per the
module created by rfnocmodtool) I see that:

-  the output
"/rfnoc_block_multiddc_tb/dut/noc_shell_multiddc_i/s_out_payload_tready" is
always 5'b00000
-  the input
"/rfnoc_block_multiddc_tb/dut/noc_shell_multiddc_i/s_out_payload_tvalid" is
driven by my core as appropriate, and happens to start at 5'b11111
-  if I manually assert the TREADY's on my core, it generates output with
correct TVALID's, TLAST's, etc.

However, I never see TREADY on
"/rfnoc_block_multiddc_tb/dut/noc_shell_multiddc_i/m_rfnoc_chdr_tready",
which I guess explains why
"/rfnoc_block_multiddc_tb/dut/noc_shell_multiddc_i/s_out_payload_tready"
remains 5'b00000.

In the testbench I issue the commands:

         blk_ctrl.send_items(0, send_samples);
//         blk_ctrl.wait_complete(0);
         $display($time, "Send complete");
         $display($time, " TX Size='%d", send_samples.size());

         // Receive the output packet
         blk_ctrl.recv_items(0, recv_samples);

The correct number of samples are sent (verified by the waveforms in the
sim).

However, the "recv_items()" call blocks.

I'm not sure what could be causing this? (Seems like back to square 1.)

Regards, Kevin


On Fri, 16 Sept 2022 at 17:04, Kevin Williams <zs1kwa@gmail.com> wrote:

> Hi Guys,
>
> No solution yet, so to summarize:
>
> My IP core generates TVALID's after a reset.
>
> These TVALID's are seen in the "client interface" of the RFNoC wrapper.
>
> They are not propagated to the master interface of the "framework
> interface"?
>
> The IP core gets the correct input data after a "send_items()" in the
> testbench, and its internal AXI signals indicate internal TVALID's over
> valid inputs etc.
>
> Somewhat out of ideas.
>
> Regards, Kevin
>
>
>
> On Wed, 14 Sept 2022 at 22:32, Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Kevin,
>>
>> To expand on Brian's and Rob's comments, one issue that often comes up is
>> user logic bugs related to AXI stream's tvalid / tready signaling. The
>> user's logic will pass their test bench but behave strangely or lock up
>> when running on hardware. I've found that before running on hardware, you
>> should at least test your block with randomized assertion of noc_shell's
>> tvalids / treadys. Here is one way to do it based on the rfnoc-example gain
>> block (
>> https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v
>> ):
>>
>>
>>   wire m_in_payload_tvalid_int, m_in_payload_tready_int;
>>   wire s_out_payload_tvalid_int, s_out_payload_tready_int;
>>
>>   noc_shell_gain #(
>>     .CHDR_W      (CHDR_W),
>>     .THIS_PORTID (THIS_PORTID),
>>     .MTU         (MTU)
>>   ) noc_shell_gain_i (
>>     .rfnoc_chdr_clk      (rfnoc_chdr_clk),
>>     .rfnoc_ctrl_clk      (rfnoc_ctrl_clk),
>>     .rfnoc_chdr_rst      (),
>>     .rfnoc_ctrl_rst      (),
>>     .rfnoc_core_config   (rfnoc_core_config),
>>     .rfnoc_core_status   (rfnoc_core_status),
>>     .s_rfnoc_chdr_tdata  (s_rfnoc_chdr_tdata),
>>     .s_rfnoc_chdr_tlast  (s_rfnoc_chdr_tlast),
>>     .s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid),
>>     .s_rfnoc_chdr_tready (s_rfnoc_chdr_tready),
>>     .m_rfnoc_chdr_tdata  (m_rfnoc_chdr_tdata),
>>     .m_rfnoc_chdr_tlast  (m_rfnoc_chdr_tlast),
>>     .m_rfnoc_chdr_tvalid (m_rfnoc_chdr_tvalid),
>>     .m_rfnoc_chdr_tready (m_rfnoc_chdr_tready),
>>     .s_rfnoc_ctrl_tdata  (s_rfnoc_ctrl_tdata),
>>     .s_rfnoc_ctrl_tlast  (s_rfnoc_ctrl_tlast),
>>     .s_rfnoc_ctrl_tvalid (s_rfnoc_ctrl_tvalid),
>>     .s_rfnoc_ctrl_tready (s_rfnoc_ctrl_tready),
>>     .m_rfnoc_ctrl_tdata  (m_rfnoc_ctrl_tdata),
>>     .m_rfnoc_ctrl_tlast  (m_rfnoc_ctrl_tlast),
>>     .m_rfnoc_ctrl_tvalid (m_rfnoc_ctrl_tvalid),
>>     .m_rfnoc_ctrl_tready (m_rfnoc_ctrl_tready),
>>     .ctrlport_clk              (ctrlport_clk),
>>     .ctrlport_rst              (ctrlport_rst),
>>     .m_ctrlport_req_wr         (m_ctrlport_req_wr),
>>     .m_ctrlport_req_rd         (m_ctrlport_req_rd),
>>     .m_ctrlport_req_addr       (m_ctrlport_req_addr),
>>     .m_ctrlport_req_data       (m_ctrlport_req_data),
>>     .m_ctrlport_resp_ack       (m_ctrlport_resp_ack),
>>     .m_ctrlport_resp_data      (m_ctrlport_resp_data),
>>     .axis_data_clk (axis_data_clk),
>>     .axis_data_rst (axis_data_rst),
>>     .m_in_payload_tdata  (m_in_payload_tdata),
>>     .m_in_payload_tkeep  (m_in_payload_tkeep),
>>     .m_in_payload_tlast  (m_in_payload_tlast),
>>
>> *    .m_in_payload_tvalid (m_in_payload_tvalid_int),
>> .m_in_payload_tready (m_in_payload_tready_int),*
>>     .m_in_context_tdata  (m_in_context_tdata),
>>     .m_in_context_tuser  (m_in_context_tuser),
>>     .m_in_context_tlast  (m_in_context_tlast),
>>     .m_in_context_tvalid (m_in_context_tvalid),
>>     .m_in_context_tready (m_in_context_tready),
>>     .s_out_payload_tdata  (s_out_payload_tdata),
>>     .s_out_payload_tkeep  (s_out_payload_tkeep),
>>     .s_out_payload_tlast  (s_out_payload_tlast),
>>
>> *    .s_out_payload_tvalid (s_out_payload_tvalid_int),
>> .s_out_payload_tready (s_out_payload_tready_int),*
>>     .s_out_context_tdata  (s_out_context_tdata),
>>     .s_out_context_tuser  (s_out_context_tuser),
>>     .s_out_context_tlast  (s_out_context_tlast),
>>     .s_out_context_tvalid (s_out_context_tvalid),
>>     .s_out_context_tready (s_out_context_tready)
>>   );
>>
>>   wire [31:0] rnd;
>>   rng rng (
>>     .clk(axis_data_clk),
>>     .rst(axis_data_rst),
>>     .out(rnd));
>>
>>   assign m_in_payload_tvalid      = m_in_payload_tvalid_int  & rnd[0];
>>   assign m_in_payload_tready_int  = m_in_payload_tready      & rnd[0];
>>
>>   assign s_out_payload_tvalid_int = s_out_payload_tvalid     & rnd[8];
>>   assign s_out_payload_tready     = s_out_payload_tready_int & rnd[8];
>>
>>
>> I suggest doing something similar with your block and see if it still
>> passes your test bench.
>>
>> Jonathon
>>
>> On Wed, Sep 14, 2022 at 3:33 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Kevin,
>>> If you run the rfnoc-example gain testbench, it should demonstrate that
>>> the testbench is providing a suitable environment for testing your custom
>>> logic or core.  Maybe see what is different between that and your
>>> testbench.
>>>
>>> If the problem turns out to be related to the "waiting for TREADY before
>>> asserting TVALID" issue presently discussed, it seems this can be solved by
>>> adding a buffer stage (register or FIFO) between your logic and the noc
>>> shell.
>>> Rob
>>>
>>> On Wed, Sep 14, 2022 at 2:11 PM Brian Padalino <bpadalino@gmail.com>
>>> wrote:
>>>
>>>> On Wed, Sep 14, 2022 at 1:55 PM Kevin Williams <zs1kwa@gmail.com>
>>>> wrote:
>>>>
>>>>> Thanks Brian. I think the core gets generated in a way which respects
>>>>> back-pressure, so unless a TREADY is seen the core does not generate output
>>>>> samples. I have observed this by simulating the core in isolation.
>>>>>
>>>> On 14 Sep 2022, 17:49 +0200, Brian Padalino <bpadalino@gmail.com>,
>>>>> wrote:
>>>>>
>>>>> I believe the AXI spec says that data should be presented when valid,
>>>>> and the tready signal just accepts that data.  You can't rely on tready to
>>>>> be asserted before asserting tvalid.
>>>>>
>>>>> With that being said, I have no idea if this is the source of any of
>>>>> your issues.
>>>>>
>>>>> Brian
>>>>>
>>>>>
>>>> I don't quite understand what you said.  To copy from the AXI protocol
>>>> spec (
>>>> https://documentation-service.arm.com/static/60d5b244677cf7536a55c23e?token=)
>>>> section 2.2:
>>>>
>>>>   "A Transmitter is not permitted to wait until TREADY is asserted
>>>> before asserting TVALID. Once TVALID is
>>>> asserted, it must remain asserted until the handshake occurs.
>>>>
>>>>   A Receiver is permitted to wait for TVALID to be asserted before
>>>> asserting TREADY. It is permitted that a
>>>> Receiver asserts and deasserts TREADY without TVALID being asserted."
>>>>
>>>> Waiting for TREADY to be asserted is invalid as a transmitter.
>>>>
>>>> Is something not compliant and causing deadlock?
>>>>
>>>> Brian
>>>>
>>>
>
> --
> Kevin Williams
>


-- 
Kevin Williams

--000000000000361bb805e92e2b8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r">Hi Everyone,<div><br></div><div>I&#39;ve got the i/o to registers in my =
core working - so the various layers of logic from testbench through the rf=
noc wrapper, control channel, my core, and back, appear fine.</div><div><br=
></div><div>However, moving back to the chdr channel (&quot;client interfac=
e&quot; as per the module created by rfnocmodtool) I see that:=C2=A0</div><=
div><br></div><div>-=C2=A0 the output &quot;/rfnoc_block_multiddc_tb/dut/no=
c_shell_multiddc_i/s_out_payload_tready&quot; is always 5&#39;b00000</div><=
div>-=C2=A0 the input &quot;/rfnoc_block_multiddc_tb/dut/noc_shell_multiddc=
_i/s_out_payload_tvalid&quot; is driven by my core as appropriate, and happ=
ens to start at 5&#39;b11111</div><div>-=C2=A0 if I manually assert the TRE=
ADY&#39;s on my core, it generates output with correct TVALID&#39;s, TLAST&=
#39;s, etc.</div><div><br></div><div>However, I never see TREADY=C2=A0on &q=
uot;/rfnoc_block_multiddc_tb/dut/noc_shell_multiddc_i/m_rfnoc_chdr_tready&q=
uot;, which I guess explains why &quot;/rfnoc_block_multiddc_tb/dut/noc_she=
ll_multiddc_i/s_out_payload_tready&quot; remains 5&#39;b00000.</div><div><b=
r></div><div>In the testbench I issue the commands:</div><div><br></div><di=
v><div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);font-=
family:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;line-heigh=
t:19px;white-space:pre"><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0blk_ctrl.<sp=
an style=3D"color:rgb(220,220,170)">send_items</span>(<span style=3D"color:=
rgb(181,206,168)">0</span>, send_samples);</div><div><span style=3D"color:r=
gb(106,153,85)">// =C2=A0 =C2=A0 =C2=A0 =C2=A0 blk_ctrl.wait_complete(0);</=
span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span style=3D"color:rgb(=
220,220,170)">$display</span>(<span style=3D"color:rgb(220,220,170)">$time<=
/span>, <span style=3D"color:rgb(206,145,120)">&quot;Send complete&quot;</s=
pan>);</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span style=3D"color:rgb=
(220,220,170)">$display</span>(<span style=3D"color:rgb(220,220,170)">$time=
</span>, <span style=3D"color:rgb(206,145,120)">&quot; TX Size=3D&#39;</spa=
n><span style=3D"color:rgb(156,220,254)">%d</span><span style=3D"color:rgb(=
206,145,120)">&quot;</span>, send_samples.<span style=3D"color:rgb(220,220,=
170)">size</span>());</div><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<span=
 style=3D"color:rgb(106,153,85)">// Receive the output packet</span></div><=
div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0blk_ctrl.<span style=3D"color:rgb(220=
,220,170)">recv_items</span>(<span style=3D"color:rgb(181,206,168)">0</span=
>, recv_samples);</div></div></div></div></div></div></div></div></div></di=
v></div><div><br></div><div>The correct number of samples are sent (verifie=
d by the waveforms in the sim).</div><div><br></div><div>However, the &quot=
;recv_items()&quot; call blocks.<br></div><div><br></div><div>I&#39;m not s=
ure what could be causing this? (Seems like back to square 1.)</div><div><b=
r></div><div>Regards, Kevin</div><div><br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 16 Sept 2022 at 17:04, Ke=
vin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1k=
wa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Hi Guys,<div><br></div><div>No solution yet, s=
o to summarize:</div><div><br></div><div>My IP core generates TVALID&#39;s =
after a reset.</div><div><br></div><div>These TVALID&#39;s are seen in the =
&quot;client interface&quot; of the RFNoC wrapper.</div><div><br></div><div=
>They are not propagated=C2=A0to the master interface of the &quot;framewor=
k interface&quot;?</div><div><br></div><div>The IP core gets the correct in=
put data after a &quot;send_items()&quot; in the testbench, and its interna=
l AXI signals indicate internal TVALID&#39;s over valid inputs etc.</div><d=
iv><br></div><div>Somewhat out of ideas.</div><div><br></div><div>Regards, =
Kevin</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 14 Sept 2022 at 22:32, Jon=
athon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_=
blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Kevin,<div><br></div><=
div>To expand on Brian&#39;s and Rob&#39;s comments, one issue that often c=
omes up is user logic bugs related to AXI stream&#39;s tvalid / tready sign=
aling. The user&#39;s logic will pass their test bench but behave strangely=
 or lock up when running on hardware. I&#39;ve found that before running on=
 hardware, you should at least test your block with randomized=C2=A0asserti=
on of noc_shell&#39;s tvalids / treadys. Here is one way to do it based on =
the rfnoc-example gain block (<a href=3D"https://github.com/EttusResearch/u=
hd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_bloc=
k_gain.v" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/maste=
r/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v</a>)=
:<br><br><br><font face=3D"monospace">=C2=A0 wire=C2=A0</font><span style=
=3D"font-family:monospace">m_in_payload_tvalid_int,=C2=A0</span><span style=
=3D"font-family:monospace">m_in_payload_tready_int</span><span style=3D"fon=
t-family:monospace">;</span></div><div><font face=3D"monospace">=C2=A0 wire=
=C2=A0</font><span style=3D"font-family:monospace">s_out_payload_tvalid_int=
</span><span style=3D"font-family:monospace">,=C2=A0</span><span style=3D"f=
ont-family:monospace">s_out_payload_tready_int;</span><span style=3D"font-f=
amily:monospace"><br></span></div><div><span style=3D"font-family:monospace=
"><br></span></div><div><font face=3D"monospace">=C2=A0 noc_shell_gain #(<b=
r>=C2=A0 =C2=A0 .CHDR_W =C2=A0 =C2=A0 =C2=A0(CHDR_W),<br>=C2=A0 =C2=A0 .THI=
S_PORTID (THIS_PORTID),<br>=C2=A0 =C2=A0 .MTU =C2=A0 =C2=A0 =C2=A0 =C2=A0 (=
MTU)<br>=C2=A0 ) noc_shell_gain_i (<br>=C2=A0 =C2=A0 .rfnoc_chdr_clk =C2=A0=
 =C2=A0 =C2=A0(rfnoc_chdr_clk),<br>=C2=A0 =C2=A0 .rfnoc_ctrl_clk =C2=A0 =C2=
=A0 =C2=A0(rfnoc_ctrl_clk),<br>=C2=A0 =C2=A0 .rfnoc_chdr_rst =C2=A0 =C2=A0 =
=C2=A0(),<br>=C2=A0 =C2=A0 .rfnoc_ctrl_rst =C2=A0 =C2=A0 =C2=A0(),<br>=C2=
=A0 =C2=A0 .rfnoc_core_config =C2=A0 (rfnoc_core_config),<br>=C2=A0 =C2=A0 =
.rfnoc_core_status =C2=A0 (rfnoc_core_status),<br>=C2=A0 =C2=A0 .s_rfnoc_ch=
dr_tdata =C2=A0(s_rfnoc_chdr_tdata),<br>=C2=A0 =C2=A0 .s_rfnoc_chdr_tlast =
=C2=A0(s_rfnoc_chdr_tlast),<br>=C2=A0 =C2=A0 .s_rfnoc_chdr_tvalid (s_rfnoc_=
chdr_tvalid),<br>=C2=A0 =C2=A0 .s_rfnoc_chdr_tready (s_rfnoc_chdr_tready),<=
br>=C2=A0 =C2=A0 .m_rfnoc_chdr_tdata =C2=A0(m_rfnoc_chdr_tdata),<br>=C2=A0 =
=C2=A0 .m_rfnoc_chdr_tlast =C2=A0(m_rfnoc_chdr_tlast),<br>=C2=A0 =C2=A0 .m_=
rfnoc_chdr_tvalid (m_rfnoc_chdr_tvalid),<br>=C2=A0 =C2=A0 .m_rfnoc_chdr_tre=
ady (m_rfnoc_chdr_tready),<br>=C2=A0 =C2=A0 .s_rfnoc_ctrl_tdata =C2=A0(s_rf=
noc_ctrl_tdata),<br>=C2=A0 =C2=A0 .s_rfnoc_ctrl_tlast =C2=A0(s_rfnoc_ctrl_t=
last),<br>=C2=A0 =C2=A0 .s_rfnoc_ctrl_tvalid (s_rfnoc_ctrl_tvalid),<br>=C2=
=A0 =C2=A0 .s_rfnoc_ctrl_tready (s_rfnoc_ctrl_tready),<br>=C2=A0 =C2=A0 .m_=
rfnoc_ctrl_tdata =C2=A0(m_rfnoc_ctrl_tdata),<br>=C2=A0 =C2=A0 .m_rfnoc_ctrl=
_tlast =C2=A0(m_rfnoc_ctrl_tlast),<br>=C2=A0 =C2=A0 .m_rfnoc_ctrl_tvalid (m=
_rfnoc_ctrl_tvalid),<br>=C2=A0 =C2=A0 .m_rfnoc_ctrl_tready (m_rfnoc_ctrl_tr=
eady),<br>=C2=A0 =C2=A0 .ctrlport_clk =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0(ctrlport_clk),<br>=C2=A0 =C2=A0 .ctrlport_rst =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(ctrlport_rst),<br>=C2=A0 =C2=A0 .m_ctrlp=
ort_req_wr =C2=A0 =C2=A0 =C2=A0 =C2=A0 (m_ctrlport_req_wr),<br>=C2=A0 =C2=
=A0 .m_ctrlport_req_rd =C2=A0 =C2=A0 =C2=A0 =C2=A0 (m_ctrlport_req_rd),<br>=
=C2=A0 =C2=A0 .m_ctrlport_req_addr =C2=A0 =C2=A0 =C2=A0 (m_ctrlport_req_add=
r),<br>=C2=A0 =C2=A0 .m_ctrlport_req_data =C2=A0 =C2=A0 =C2=A0 (m_ctrlport_=
req_data),<br>=C2=A0 =C2=A0 .m_ctrlport_resp_ack =C2=A0 =C2=A0 =C2=A0 (m_ct=
rlport_resp_ack),<br>=C2=A0 =C2=A0 .m_ctrlport_resp_data =C2=A0 =C2=A0 =C2=
=A0(m_ctrlport_resp_data),<br>=C2=A0 =C2=A0 .axis_data_clk (axis_data_clk),=
<br>=C2=A0 =C2=A0 .axis_data_rst (axis_data_rst),<br>=C2=A0 =C2=A0 .m_in_pa=
yload_tdata =C2=A0(m_in_payload_tdata),<br>=C2=A0 =C2=A0 .m_in_payload_tkee=
p =C2=A0(m_in_payload_tkeep),<br>=C2=A0 =C2=A0 .m_in_payload_tlast =C2=A0(m=
_in_payload_tlast),<br><b>=C2=A0 =C2=A0 .m_in_payload_tvalid (m_in_payload_=
tvalid_int),<br>=C2=A0 =C2=A0 .m_in_payload_tready (m_in_payload_tready_int=
),</b><br>=C2=A0 =C2=A0 .m_in_context_tdata =C2=A0(m_in_context_tdata),<br>=
=C2=A0 =C2=A0 .m_in_context_tuser =C2=A0(m_in_context_tuser),<br>=C2=A0 =C2=
=A0 .m_in_context_tlast =C2=A0(m_in_context_tlast),<br>=C2=A0 =C2=A0 .m_in_=
context_tvalid (m_in_context_tvalid),<br>=C2=A0 =C2=A0 .m_in_context_tready=
 (m_in_context_tready),<br>=C2=A0 =C2=A0 .s_out_payload_tdata =C2=A0(s_out_=
payload_tdata),<br>=C2=A0 =C2=A0 .s_out_payload_tkeep =C2=A0(s_out_payload_=
tkeep),<br>=C2=A0 =C2=A0 .s_out_payload_tlast =C2=A0(s_out_payload_tlast),<=
br><b>=C2=A0 =C2=A0 .s_out_payload_tvalid (s_out_payload_tvalid_int),<br>=
=C2=A0 =C2=A0 .s_out_payload_tready (s_out_payload_tready_int),</b><br>=C2=
=A0 =C2=A0 .s_out_context_tdata =C2=A0(s_out_context_tdata),<br>=C2=A0 =C2=
=A0 .s_out_context_tuser =C2=A0(s_out_context_tuser),<br>=C2=A0 =C2=A0 .s_o=
ut_context_tlast =C2=A0(s_out_context_tlast),<br>=C2=A0 =C2=A0 .s_out_conte=
xt_tvalid (s_out_context_tvalid),<br>=C2=A0 =C2=A0 .s_out_context_tready (s=
_out_context_tready)<br>=C2=A0 );</font></div><div><span style=3D"font-fami=
ly:monospace"><br></span></div><div><span style=3D"font-family:monospace">=
=C2=A0 wire [31:0] rnd;</span></div><div><span style=3D"font-family:monospa=
ce">=C2=A0 rng rng (</span></div><div><font face=3D"monospace">=C2=A0 =C2=
=A0 .clk(</font><span style=3D"font-family:monospace">axis_data_clk</span><=
span style=3D"font-family:monospace">),</span></div><div><font face=3D"mono=
space">=C2=A0 =C2=A0 .rst(</font><span style=3D"font-family:monospace">axis=
_data_rst</span><span style=3D"font-family:monospace">),</span></div><div><=
span style=3D"font-family:monospace">=C2=A0 =C2=A0 .out(rnd)</span><font fa=
ce=3D"monospace">);</font><br></div><div><br></div><div><font face=3D"monos=
pace">=C2=A0 assign=C2=A0</font><span style=3D"font-family:monospace">m_in_=
payload_tvalid=C2=A0 =C2=A0 =C2=A0 =3D=C2=A0</span><span style=3D"font-fami=
ly:monospace">m_in_payload_tvalid_int=C2=A0 &amp; rnd[0];</span></div><div>=
<font face=3D"monospace">=C2=A0 assign=C2=A0</font><span style=3D"font-fami=
ly:monospace">m_in_payload_tready_int=C2=A0 =3D=C2=A0</span><span style=3D"=
font-family:monospace">m_in_payload_tready=C2=A0 =C2=A0 =C2=A0 &amp; rnd[0]=
;</span><span style=3D"font-family:monospace"><br></span></div><div><span s=
tyle=3D"font-family:monospace"><br></span></div><div><div><font face=3D"mon=
ospace">=C2=A0 assign=C2=A0</font><span style=3D"font-family:monospace">s_o=
ut_payload_tvalid_int</span><span style=3D"font-family:monospace">=C2=A0=3D=
=C2=A0</span><span style=3D"font-family:monospace">s_out_payload_tvalid</sp=
an><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0&amp; rnd[8];<=
/span></div><div><font face=3D"monospace">=C2=A0 assign=C2=A0</font><span s=
tyle=3D"font-family:monospace">s_out_payload_tready=C2=A0 =C2=A0=C2=A0</spa=
n><span style=3D"font-family:monospace">=C2=A0=3D=C2=A0</span><span style=
=3D"font-family:monospace">s_out_payload_tready_int</span><span style=3D"fo=
nt-family:monospace">=C2=A0&amp; rnd[8];</span></div></div><div><font face=
=3D"monospace"><br></font></div><div><br></div><div><font face=3D"arial, sa=
ns-serif">I suggest doing something similar with your block and see if it s=
till passes your test bench.</font></div><div><font face=3D"arial, sans-ser=
if"><br></font></div><div><font face=3D"arial, sans-serif">Jonathon</font><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, Sep 14, 2022 at 3:33 PM Rob Kossler &lt;<a href=3D"mailto:rkos=
sler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Kevin,<di=
v>If you run the rfnoc-example gain testbench, it should demonstrate that t=
he testbench is providing a suitable environment for testing your custom lo=
gic or core.=C2=A0 Maybe see what is different between that and your testbe=
nch.=C2=A0=C2=A0</div><div><br></div><div>If the problem turns out to be re=
lated to the &quot;waiting for TREADY=C2=A0before asserting TVALID&quot; is=
sue presently discussed, it seems this can be solved by adding a buffer sta=
ge (register or FIFO) between your logic and the noc shell.</div><div>Rob</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Sep 14, 2022 at 2:11 PM Brian Padalino &lt;<a href=3D"mailto:bp=
adalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Sep 14, 2022 at 1:55 PM Kevin Williams &lt;<a href=3D"ma=
ilto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div name=3D"messageBodySection">
<div dir=3D"auto">Thanks Brian. I think the core gets generated in a way wh=
ich respects back-pressure, so unless a TREADY is seen the core does not ge=
nerate output samples. I have observed this by simulating the core in isola=
tion.</div></div></div></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><div name=3D"messageBodySection">
</div>
<div name=3D"messageReplySection">On 14 Sep 2022, 17:49 +0200, Brian Padali=
no &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@g=
mail.com</a>&gt;, wrote:<br>
<blockquote type=3D"cite" style=3D"border-left:thin solid grey;margin:5px;p=
adding-left:10px">
<div dir=3D"ltr">I believe the AXI spec says that data should be presented =
when valid, and the tready signal just accepts that data.=C2=A0 You can&#39=
;t rely on tready to be asserted before asserting tvalid.
<div><br></div>
<div>With that being said, I have no idea if this is the source of any of y=
our issues.</div>
<div><br></div>
<div>Brian</div></div></blockquote></div></div></blockquote><div><br></div>=
<div>I don&#39;t quite understand what you said.=C2=A0 To copy from the AXI=
 protocol spec (<a href=3D"https://documentation-service.arm.com/static/60d=
5b244677cf7536a55c23e?token=3D" target=3D"_blank">https://documentation-ser=
vice.arm.com/static/60d5b244677cf7536a55c23e?token=3D</a>) section 2.2:</di=
v><div><br></div><div>=C2=A0 &quot;A Transmitter is not permitted to wait u=
ntil TREADY is asserted before asserting TVALID. Once TVALID is</div>assert=
ed, it must remain asserted until the handshake occurs.</div><div class=3D"=
gmail_quote"><br>=C2=A0 A Receiver is permitted to wait for TVALID to be as=
serted before asserting TREADY. It is permitted that a<br>Receiver asserts =
and deasserts TREADY without TVALID being asserted.&quot;</div><div class=
=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Waiting for TREADY to=
 be asserted is invalid as a transmitter.</div><div class=3D"gmail_quote"><=
br></div><div class=3D"gmail_quote">Is something not compliant and causing =
deadlock?</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quo=
te">Brian</div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</div>

--000000000000361bb805e92e2b8a--

--===============4512668975363837364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4512668975363837364==--
