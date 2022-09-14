Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7D65B8C42
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 17:51:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14854383C74
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 11:51:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663170680; bh=UUtBFuoXQR/kjd7IppQ670I16aiPdf7uBL8wA+vLvrM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Fr7DVxKf03/fpBUc1MhCKnToU7YnES4FdS9hiooFSiKtTIzQuwyqaA7UhecqNn5LA
	 KgATO8F5dclW3G7FYkfZJFFqpgZv4fxjzsGGVJJy9gMpPoemgdpveDpTfBqcfcld/4
	 Vo1XBlfeS2DXT4m2TL3oAjfcLGZf6j3E9sCp+gd9Rh1WbAjrAbTPrqo47Jvr0w3QR4
	 MTA1YYS2tMIQ6Rf1H5imlzDRwXffLsxm0G4e8VpC9tI/JRpMbmiqaMy0QpBn2LwooM
	 qM1ehPKFsYuBckZnBB+O/ujP2cDAm7TYY5JqaZXpz9AbX//2zQ6n2N/WuwVHgrQ1cE
	 XjgCntuSzYFbQ==
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E738383AEE
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 11:49:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R0CKc4Bb";
	dkim-atps=neutral
Received: by mail-oo1-f44.google.com with SMTP id l40-20020a4a94eb000000b00472717928b5so2526528ooi.1
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 08:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=8FXMWXUwnxbblEcGCLJniIplY87LJU+7BKvagxqIzOE=;
        b=R0CKc4Bb3HpWWT0JCmiQTlhN61FEToGans2opfM3JMU6jji/19GE5/69dsGaNn6OjV
         VkexHejOD8tn6O4FifND07tlx9g3MnJYXX8/kr6EzTf5bYT/+mA4A8E/2L/nv7mviZqs
         0QD44FwlepKFlT0HlclcpK+UDHkfycA36Ief2CJD1l6dI8LF07vi8z+zshzDW3AXZV82
         N3TvBgD/TGUdx6JmPOBwZoMjyjrDqUud6PrhVJTJycCBMxenrgXFuk34MJrkO2NYW8Xm
         2aro115IKE48bcZJPwPbN1QISVOlKkVIrnR7qv/OAF8cyHpP02p4J1jB39BDaFLgbEbU
         x5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=8FXMWXUwnxbblEcGCLJniIplY87LJU+7BKvagxqIzOE=;
        b=Ouf4wYIu07RhjD+1FkHdY6I55418jwvZMR+SWU4S2YWixKbIyCFQKnS3qnwjGyJmwf
         QL8UBSS/Toqh0ON3iH4Z1XzueAWcWJuyGQim1royjD/DPdmSuXF0KLdl0bOW5IgM2bvs
         auHMDfLc81KA4z+j7dCQkdRDoUe5k3bE3QUs8UoU40sVPPGCXDHySYD/Hcn08gOaYyAT
         gHoF8DRy1doydMRIkSS986aJMD+iaXnpZYK87vL7YuTucnPbvgtjzQsfqxfmcWwDSSM3
         7Nip8jnqAfWRIgkCRzyquIWGjBfAxfAY9SrmpiJeAl76pHjG+s1CBSmabnvQMUsu17EK
         Ztzw==
X-Gm-Message-State: ACgBeo3oxSk/W5DG1z2U/5yhx9N8qBlxawu5EAWRLvJix+DRHgFh03m+
	IW96pQXgXCc5GFKF0JfBAydrj+d53dIciViVGvw=
X-Google-Smtp-Source: AA6agR4lxgIq+FtjFtnUBtkzjbXNfeTftenEIjxruUxoQ0jM8ZUg4qROmJqfcwmZkuzePfGnmCLyupG6JWKqwqL6drI=
X-Received: by 2002:a4a:4481:0:b0:475:627a:3671 with SMTP id
 o123-20020a4a4481000000b00475627a3671mr6125919ooa.4.1663170597959; Wed, 14
 Sep 2022 08:49:57 -0700 (PDT)
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
 <CAJhOL6dLdSL2bWPjdgcfnXL+ednwRQ1QX9tRG3mxgm3+O=486Q@mail.gmail.com> <CAJhOL6dUL3S-CJJHLOJTkaj86V-4axM8Ah=4_aKvAcB6WHEHyg@mail.gmail.com>
In-Reply-To: <CAJhOL6dUL3S-CJJHLOJTkaj86V-4axM8Ah=4_aKvAcB6WHEHyg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 14 Sep 2022 11:49:45 -0400
Message-ID: <CAEXYVK6MeWsG3CF0LXYaOE0w5RGzAiksG1j-54kNOWYg2ZOfDg@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: 5BC2Y7ELHP434ZT5MCQVF2K6HBCG5XTF
X-Message-ID-Hash: 5BC2Y7ELHP434ZT5MCQVF2K6HBCG5XTF
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5BC2Y7ELHP434ZT5MCQVF2K6HBCG5XTF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3387606614380004720=="

--===============3387606614380004720==
Content-Type: multipart/alternative; boundary="000000000000b13aaf05e8a514fb"

--000000000000b13aaf05e8a514fb
Content-Type: text/plain; charset="UTF-8"

I believe the AXI spec says that data should be presented when valid, and
the tready signal just accepts that data.  You can't rely on tready to be
asserted before asserting tvalid.

With that being said, I have no idea if this is the source of any of your
issues.

Brian

On Wed, Sep 14, 2022 at 11:28 AM Kevin Williams <zs1kwa@gmail.com> wrote:

> Hi, I don't seem to be able to get TREADY's asserted for my core in a
> testbench. (See the "XXXXX's" in the testbench below. The symptom is that
> the "recv_items" blocks until the test times out.)
>
> Without that check the "send_items" call is fine, and I can see the
> transaction progressing on that interface.
>
> I'm sure this is a case of me missing something?
>
> //
> // Copyright 2022 Ettus Research, a National Instruments Brand
> //
> // SPDX-License-Identifier: LGPL-3.0-or-later
> //
> // Module: rfnoc_block_multiddc_tb
> //
> // Description: Testbench for the multiddc RFNoC block.
> //
>
> `default_nettype none
>
>
> module rfnoc_block_multiddc_tb;
>
>   `include "test_exec.svh"
>
>   import PkgTestExec::*;
>   import PkgChdrUtils::*;
>   import PkgRfnocBlockCtrlBfm::*;
>   import PkgRfnocItemUtils::*;
>
>
> //---------------------------------------------------------------------------
>   // Testbench Configuration
>
> //---------------------------------------------------------------------------
>
>   localparam [31:0] NOC_ID          = 32'h951E399F;
>   localparam [ 9:0] THIS_PORTID     = 10'h123;
>   localparam int    CHDR_W          = 64;    // CHDR size in bits
>   localparam int    MTU             = 10;    // Log2 of max transmission
> unit in CHDR words
>   localparam int    NUM_PORTS       = 1;
>   localparam int    NUM_PORTS_I     = 1;
>   localparam int    NUM_PORTS_O     = 5;
>   localparam int    ITEM_W          = 32;    // Sample size in bits
>   localparam int    SPP             = 64;    // Samples per packet
>   localparam int    PKT_SIZE_BYTES  = SPP * (ITEM_W/8);
>   localparam int    STALL_PROB      = 25;    // Default BFM stall
> probability
>   localparam real   CHDR_CLK_PER    = 5.0;   // 200 MHz
>   localparam real   CTRL_CLK_PER    = 8.0;   // 125 MHz
>   localparam real   CE_CLK_PER      = 4.0;   // 250 MHz
>
>
> //---------------------------------------------------------------------------
>   // Clocks and Resets
>
> //---------------------------------------------------------------------------
>
>   bit rfnoc_chdr_clk;
>   bit rfnoc_ctrl_clk;
>   bit ce_clk;
>
>   sim_clock_gen #(CHDR_CLK_PER) rfnoc_chdr_clk_gen (.clk(rfnoc_chdr_clk),
> .rst());
>   sim_clock_gen #(CTRL_CLK_PER) rfnoc_ctrl_clk_gen (.clk(rfnoc_ctrl_clk),
> .rst());
>   sim_clock_gen #(CE_CLK_PER) ce_clk_gen (.clk(ce_clk), .rst());
>
>
> //---------------------------------------------------------------------------
>   // Bus Functional Models
>
> //---------------------------------------------------------------------------
>
>   // Backend Interface
>   RfnocBackendIf backend (rfnoc_chdr_clk, rfnoc_ctrl_clk);
>
>   // AXIS-Ctrl Interface
>   AxiStreamIf #(32) m_ctrl (rfnoc_ctrl_clk, 1'b0);
>   AxiStreamIf #(32) s_ctrl (rfnoc_ctrl_clk, 1'b0);
>
>   // AXIS-CHDR Interfaces
>   AxiStreamIf #(CHDR_W) m_chdr [NUM_PORTS_I] (rfnoc_chdr_clk, 1'b0);
>   AxiStreamIf #(CHDR_W) s_chdr [NUM_PORTS_O] (rfnoc_chdr_clk, 1'b0);
>
>   // Block Controller BFM
>   RfnocBlockCtrlBfm #(CHDR_W, ITEM_W) blk_ctrl = new(backend, m_ctrl,
> s_ctrl);
>
>   // CHDR word and item/sample data types
>   typedef ChdrData #(CHDR_W, ITEM_W)::chdr_word_t chdr_word_t;
>   typedef ChdrData #(CHDR_W, ITEM_W)::item_t      item_t;
>
>   // Connect block controller to BFMs
>   for (genvar i = 0; i < NUM_PORTS_I; i++) begin :
> gen_bfm_input_connections
>     initial begin
>       blk_ctrl.connect_master_data_port(i, m_chdr[i], PKT_SIZE_BYTES);
>       blk_ctrl.set_master_stall_prob(i, STALL_PROB);
>     end
>   end
>   for (genvar i = 0; i < NUM_PORTS_O; i++) begin :
> gen_bfm_output_connections
>     initial begin
>       blk_ctrl.connect_slave_data_port(i, s_chdr[i]);
>       blk_ctrl.set_slave_stall_prob(i, STALL_PROB);
>     end
>   end
>
>
> //---------------------------------------------------------------------------
>   // Device Under Test (DUT)
>
> //---------------------------------------------------------------------------
>
>   // DUT Slave (Input) Port Signals
>   logic [CHDR_W*NUM_PORTS_I-1:0] s_rfnoc_chdr_tdata;
>   logic [       NUM_PORTS_I-1:0] s_rfnoc_chdr_tlast;
>   logic [       NUM_PORTS_I-1:0] s_rfnoc_chdr_tvalid;
>   logic [       NUM_PORTS_I-1:0] s_rfnoc_chdr_tready;
>
>   // DUT Master (Output) Port Signals
>   logic [CHDR_W*NUM_PORTS_O-1:0] m_rfnoc_chdr_tdata;
>   logic [       NUM_PORTS_O-1:0] m_rfnoc_chdr_tlast;
>   logic [       NUM_PORTS_O-1:0] m_rfnoc_chdr_tvalid;
>   logic [       NUM_PORTS_O-1:0] m_rfnoc_chdr_tready;
>
>   // Map the array of BFMs to a flat vector for the DUT connections
>   for (genvar i = 0; i < NUM_PORTS_I; i++) begin :
> gen_dut_input_connections
>     // Connect BFM master to DUT slave port
>     assign s_rfnoc_chdr_tdata[CHDR_W*i+:CHDR_W] = m_chdr[i].tdata;
>     assign s_rfnoc_chdr_tlast[i]                = m_chdr[i].tlast;
>     assign s_rfnoc_chdr_tvalid[i]               = m_chdr[i].tvalid;
>     assign m_chdr[i].tready                     = s_rfnoc_chdr_tready[i];
>   end
>   for (genvar i = 0; i < NUM_PORTS_O; i++) begin :
> gen_dut_output_connections
>     // Connect BFM slave to DUT master port
>     assign s_chdr[i].tdata        = m_rfnoc_chdr_tdata[CHDR_W*i+:CHDR_W];
>     assign s_chdr[i].tlast        = m_rfnoc_chdr_tlast[i];
>     assign s_chdr[i].tvalid       = m_rfnoc_chdr_tvalid[i];
>     assign m_rfnoc_chdr_tready[i] = s_chdr[i].tready;
>   end
>
>   rfnoc_block_multiddc #(
>     .THIS_PORTID         (THIS_PORTID),
>     .CHDR_W              (CHDR_W),
>     .MTU                 (MTU),
>     .NUM_PORTS           (NUM_PORTS)
>   ) dut (
>     // .rfnoc_chdr_clk      (rfnoc_chdr_clk),
>     // .rfnoc_ctrl_clk      (rfnoc_ctrl_clk),
>     .rfnoc_chdr_clk      (backend.chdr_clk),
>     .rfnoc_ctrl_clk      (backend.ctrl_clk),
>     .ce_clk              (ce_clk),
>     .rfnoc_core_config   (backend.cfg),
>     .rfnoc_core_status   (backend.sts),
>     .s_rfnoc_chdr_tdata  (s_rfnoc_chdr_tdata),
>     .s_rfnoc_chdr_tlast  (s_rfnoc_chdr_tlast),
>     .s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid),
>     .s_rfnoc_chdr_tready (s_rfnoc_chdr_tready),
>     .m_rfnoc_chdr_tdata  (m_rfnoc_chdr_tdata),
>     .m_rfnoc_chdr_tlast  (m_rfnoc_chdr_tlast),
>     .m_rfnoc_chdr_tvalid (m_rfnoc_chdr_tvalid),
>     .m_rfnoc_chdr_tready (m_rfnoc_chdr_tready),
>     .s_rfnoc_ctrl_tdata  (m_ctrl.tdata),
>     .s_rfnoc_ctrl_tlast  (m_ctrl.tlast),
>     .s_rfnoc_ctrl_tvalid (m_ctrl.tvalid),
>     .s_rfnoc_ctrl_tready (m_ctrl.tready),
>     .m_rfnoc_ctrl_tdata  (s_ctrl.tdata),
>     .m_rfnoc_ctrl_tlast  (s_ctrl.tlast),
>     .m_rfnoc_ctrl_tvalid (s_ctrl.tvalid),
>     .m_rfnoc_ctrl_tready (s_ctrl.tready)
>   );
>
>   // Generate a random signed 16-bit integer in the range [a, b]
>   function shortint rand_shortint(int a, int b);
>     return signed'($urandom_range(b - a)) + a;
>   endfunction : rand_shortint
>
>
> //---------------------------------------------------------------------------
>   // Main Test Process
>
> //---------------------------------------------------------------------------
>
>   initial begin : tb_main
>
>     $monitor($time, " s_rfnoc_chdr_tdata='b%b", s_rfnoc_chdr_tdata);
>     $monitor($time, " s_rfnoc_chdr_tvalid='%d", s_rfnoc_chdr_tvalid);
>     $monitor($time, " s_rfnoc_chdr_tready='%d", s_rfnoc_chdr_tready);
>     $monitor($time, " s_rfnoc_chdr_tlast='%d", s_rfnoc_chdr_tlast);
>
>     $monitor($time, " m_rfnoc_chdr_tdata='b%b", m_rfnoc_chdr_tdata);
>     $monitor($time, " m_rfnoc_chdr_tvalid='b%b", m_rfnoc_chdr_tvalid);
>     $monitor($time, " m_rfnoc_chdr_tready='b%b", m_rfnoc_chdr_tready);
>
>     // Initialize the test exec object for this testbench
>     test.start_tb("rfnoc_block_multiddc_tb");
>
>     // Start the BFMs running
>     blk_ctrl.run();
>
>     //--------------------------------
>     // Reset
>     //--------------------------------
>
>     test.start_test("Flush block then reset it", 10us);
>     blk_ctrl.flush_and_reset();
>     test.end_test();
>
>     // Start the clocks running. We wait to start them until this
> testbench
>     // runs because we don't want to waste the simulator's CPU time by
>     // simulating idle clock cycles.
>     rfnoc_chdr_clk_gen.start();
>     rfnoc_ctrl_clk_gen.start();
>     ce_clk_gen.start();
>
>     //--------------------------------
>     // Verify Block Info
>     //--------------------------------
>
>     test.start_test("Verify Block Info", 2us);
>     `ASSERT_ERROR(blk_ctrl.get_noc_id() == NOC_ID, "Incorrect NOC_ID
> Value");
>     `ASSERT_ERROR(blk_ctrl.get_num_data_i() == NUM_PORTS_I, "Incorrect
> NUM_DATA_I Value");
>     `ASSERT_ERROR(blk_ctrl.get_num_data_o() == NUM_PORTS_O, "Incorrect
> NUM_DATA_O Value");
>     `ASSERT_ERROR(blk_ctrl.get_mtu() == MTU, "Incorrect MTU Value");
>     test.end_test();
>
>     test.start_test("Verify Slave TREADY", 2us);
>     `ASSERT_ERROR(s_rfnoc_chdr_tready == 1'b1, "Slave TREADY is not 1");
>     test.end_test();
>
>     //--------------------------------
>     // Test Sequences
>     //--------------------------------
>
>     // begin
>     //   // Read and write the gain register to make sure it updates
> correctly.
>     //   logic [31:0] val32;
>     //   test.start_test("Verify a register", 5us);
>
>     //   blk_ctrl.reg_read(256, val32);
>     //   `ASSERT_ERROR(
>     //     val32 == 0, "Initial value for 0x100 is not 0");
>
>     //   // Write a value wider than the register to verify the width
>     //   blk_ctrl.reg_write(256, 32'h12348765);
>     //   blk_ctrl.reg_read(256, val32);
>     //   `ASSERT_ERROR(
>     //     val32 == 32'h8765, "Readback value for 0x100 is not correct");
>
>     //   test.end_test();
>     // end
>
>     // <Add your test code here>
>     // test.start_test("<Name your first test>", 100us);
>     // `ASSERT_WARNING(0, "This testbench doesn't test anything yet!");
>     // test.end_test();
>
>     begin
>         localparam shortint MAX_TEST_VAL =  255;
>         localparam shortint MIN_TEST_VAL = -255;
>
>         packet_info_t pkt_info;
>
>         item_t send_samples[$];    // Sample words
>         item_t recv_samples[$];    // Sample words
>
>         // Read and write the gain register to make sure it updates
> correctly.
>         test.start_test("Check data flows through multiddc", 40us);
>
>         // Generate a payload of random samples in the range [-255, 255],
> two
>         // samples per CHDR word.
>         send_samples = {};
>         for (int i = 0; i < SPP; i++) begin
>             send_samples.push_back({
>             // rand_shortint(MIN_TEST_VAL, MAX_TEST_VAL),  // I
>             // rand_shortint(MIN_TEST_VAL, MAX_TEST_VAL)   // Q
>             16'hff,
>             16'hff
>             });
>         end
>
>         // check that dut is ready to receive
>         `ASSERT_ERROR(s_rfnoc_chdr_tready == 1'b1, "Slave TREADY is not 1"
> );
>
>         // wait for slaves to assert TREADY
> //
> XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
>         $display("Waiting for TREADY on the BFM slave...");
>         wait(m_rfnoc_chdr_tready != 5'b00000) $display($time, "
> m_rfnoc_chdr_tready='b%b", m_rfnoc_chdr_tready);
> //
> XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
>
>         // check sinks are asserting TREADY
>         $display($time, " m_rfnoc_chdr_tready='b%b", m_rfnoc_chdr_tready);
>
>         // model some back-pressure if needed
>         blk_ctrl.set_slave_stall_prob(0, 0);
>
>         // Queue a packet for transfer
>         // pkt_info = 0;
>         // pkt_info.eob = 1;
>         // blk_ctrl.send_items(0, send_samples, , pkt_info);
>         blk_ctrl.send_items(0, send_samples);
>         blk_ctrl.wait_complete(0);
>
>         $display($time, "Send complete");
>
>         $display($time, " TX Size='%d", send_samples.size());
>
>         // Receive the output packet
>         blk_ctrl.recv_items(0, recv_samples);
>
>         // Check the resulting payload size
>         `ASSERT_ERROR(recv_samples.size() == SPP,
>             "Received payload didn't match size of payload sent");
>
>         test.end_test();
>     end
>
>     //--------------------------------
>     // Finish Up
>     //--------------------------------
>
>     // Display final statistics and results
>     test.end_tb();
>   end : tb_main
>
> endmodule : rfnoc_block_multiddc_tb
>
>
> `default_nettype wire
>
> On Wed, 14 Sept 2022 at 12:30, Kevin Williams <zs1kwa@gmail.com> wrote:
>
>> Hi Rob, thanks for that testbench advice.
>>
>> My core will not provide output if it does not see TREADY on its master
>> interfaces. (Which I have verified by simulating the core on its own.)
>>
>> I have used the rfnoc-example testbench for reference, and issue a
>> "blk_ctrl.send_items(0, send_samples)".
>>
>> Monitoring the rfnoc signal "m_rfnoc_chdr_tready" in the testbench shows
>> that it never transitions from zero's at the beginning of the simulation.
>>
>> Should I see the BFM slave asserting these signals? (I cannot drive them
>> from my testbench - I get a warning about multiple drivers.)
>>
>> On Tue, 13 Sept 2022 at 15:49, Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Have you tried to run an rfnoc-style testbench such as in the
>>> rfnoc-example?  If not, this may be useful.  If you try this, it may be
>>> easier to follow the example if you change your output number of ports to
>>> be 1 so that it is a simple 1-to-1 block.
>>> Rob
>>>
>>> On Tue, Sep 13, 2022 at 6:36 AM Kevin Williams <zs1kwa@gmail.com> wrote:
>>>
>>>> Hi Rob,
>>>>
>>>> I can confirm the radio streams correctly.
>>>>
>>>> I have also tried tx_streamer => multiDDC => rx_streamer which
>>>> successfully sends a number of samples, but none are received. (The script
>>>> is below.)
>>>>
>>>> Just to summarize, the IP core seems to be behaving correctly when
>>>> simulated in Vivado where I apply AXI handshaking, reset the core, and
>>>> clock it.
>>>>
>>>> I have set all endpoints in the design as follows:
>>>>
>>>>   ep0:                       # Stream endpoint name
>>>>     ctrl: True                      # Endpoint passes control traffic
>>>>     data: True                      # Endpoint passes data traffic
>>>>     buff_size: 32768                # Ingress buffer size for data
>>>>
>>>> Regards, Kevin
>>>>
>>>>
>>>> graph = uhd.rfnoc.RfnocGraph("type=x300,addr=192.168.30.2")
>>>>
>>>> tx_streamer = graph.create_tx_streamer(1, uhd.usrp.StreamArgs("sc16",
>>>> "sc16"))
>>>> rx_streamer = graph.create_rx_streamer(1, uhd.usrp.StreamArgs("sc16",
>>>> "sc16"))
>>>>
>>>> gb = graph.get_block("0/multiddc#0")
>>>> graph.connect(tx_streamer, 0, gb.get_unique_id(), 0)
>>>> graph.connect(gb.get_unique_id(), 0, rx_streamer, 0)
>>>> graph.commit()
>>>>
>>>> num_samps = 4 * tx_streamer.get_max_num_samps()
>>>> send_samps = np.array([[0x40004000] * num_samps], dtype="int32")
>>>>
>>>> tx_md = uhd.types.TXMetadata()
>>>> tx_md.start_of_burst = True
>>>> tx_md.end_of_burst = True
>>>>
>>>> recv_samps = np.zeros((1, num_samps), dtype="int32")
>>>>
>>>> rx_md = uhd.types.RXMetadata()
>>>>
>>>> num_sent = tx_streamer.send(send_samps, uhd.types.TXMetadata())
>>>> num_recv = rx_streamer.recv(recv_samps, rx_md, 0.1)
>>>>
>>>>
>>>> On Tue, 13 Sept 2022 at 00:36, Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> One more thought. If the FPGA version that you built with dynamic
>>>>> linking, you should be able to create an RFNoC Graph as follows:
>>>>>   tx_streamer => multiDDC => rx_streamer(s)
>>>>> This way you can eliminate the radio from the equation and test in a
>>>>> very similar fashion to the way it is tested in a testbench.
>>>>>
>>>>> Rob
>>>>>
>>>>> On Mon, Sep 12, 2022 at 6:33 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>
>>>>>> Oops. Ignore what I said. I now realize you stated you were getting
>>>>>> an Overflow which of course you would never get if streaming hadn't started.
>>>>>> Rob
>>>>>>
>>>>>> On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>
>>>>>>> Are you sure that the radio is even streaming?  The typical method
>>>>>>> for starting streaming is to tell the rx_streamer to start streaming.
>>>>>>> Then, in UHD-land, the rx_streamer ctrl tells the next upstring block to
>>>>>>> start streaming such that this streaming command propagates up the chain
>>>>>>> until the radio receives it and starts streaming.  So, if your custom block
>>>>>>> does not forward the streaming command from the rx_streamer to the radio,
>>>>>>> then the radio never even starts streaming.  You can verify by simply
>>>>>>> monitoring the LEDs.
>>>>>>>
>>>>>>> If this is the problem, you can go-around the intended use by simply
>>>>>>> telling the radio to start streaming rather than the rx_streamer.  Or, of
>>>>>>> course, you can modify your custom block controller to propagate the
>>>>>>> streaming command.
>>>>>>> Rob
>>>>>>>
>>>>>>> On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams <zs1kwa@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Yes, of course. But I don't get 1 sample from the ddc's, even with
>>>>>>>> just one channel of a 2:1 decimated channel connected to the rx streamer.
>>>>>>>>
>>>>>>>> On Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum <
>>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>>
>>>>>>>>> The aggregate output rate of the 5 streams could require more
>>>>>>>>> bandwidth than the 10 GigE interface can sustain. What are the exact output
>>>>>>>>> rates?
>>>>>>>>>
>>>>>>>>> On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams <zs1kwa@gmail.com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Those rates vary from a 2:1 decimation down to other rates.
>>>>>>>>>>
>>>>>>>>>> The host has 10 Gbe interfaces to the USRP.
>>>>>>>>>>
>>>>>>>>>> I get samples if i connect the radio to the rx streamer, just
>>>>>>>>>> nothing from the ddc's.
>>>>>>>>>>
>>>>>>>>>> On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum <
>>>>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> Hi Kevin,
>>>>>>>>>>>
>>>>>>>>>>> What are the sample rates for the 5 outputs? What connection are
>>>>>>>>>>> you using to your host PC, 1 GigE or 10 GigE?
>>>>>>>>>>>
>>>>>>>>>>> Jonathon
>>>>>>>>>>>
>>>>>>>>>>> On Mon, Sep 12, 2022 at 3:38 PM Kevin Williams <zs1kwa@gmail.com>
>>>>>>>>>>> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Hi Jonathon,
>>>>>>>>>>>>
>>>>>>>>>>>> I've got an x310. The flowgraph is a simple
>>>>>>>>>>>> radio->multiddc->(to 5x outputs). I've tried both static and dynamic
>>>>>>>>>>>> routing from the radio block. I.e. the static route version:
>>>>>>>>>>>>
>>>>>>>>>>>> |    /
>>>>>>>>>>>> |   |       Static connections on this device:
>>>>>>>>>>>> |   |
>>>>>>>>>>>> |   |   * 0/Radio#0:0==>0/multiddc#0:0
>>>>>>>>>>>> |   |   * 0/multiddc#0:0==>0/SEP#2:0
>>>>>>>>>>>> |   |   * 0/multiddc#0:1==>0/SEP#3:0
>>>>>>>>>>>> |   |   * 0/multiddc#0:2==>0/SEP#4:0
>>>>>>>>>>>> |   |   * 0/multiddc#0:3==>0/SEP#5:0
>>>>>>>>>>>> |   |   * 0/multiddc#0:4==>0/SEP#6:0
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> On the input side it is all at the radio rate, but I hope my
>>>>>>>>>>>> core is being clocked at 214 MHz.
>>>>>>>>>>>>
>>>>>>>>>>>> When I simulate my IP core (which includes the AXI streaming
>>>>>>>>>>>> interfaces) it looks ok.
>>>>>>>>>>>>
>>>>>>>>>>>> Regards, Kevin
>>>>>>>>>>>>
>>>>>>>>>>>> On Mon, 12 Sept 2022 at 21:29, Jonathon Pendlum <
>>>>>>>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>>> Hello Kevin,
>>>>>>>>>>>>>
>>>>>>>>>>>>> What device are you using and what does your flowgraph look
>>>>>>>>>>>>> like? What sample rate are you running at? If your block is running at the
>>>>>>>>>>>>> radio sample rate (e.g. 200 MSPS on a X310), your block will need to
>>>>>>>>>>>>> process one input sample every clock cycle on average.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Jonathon
>>>>>>>>>>>>>
>>>>>>>>>>>>> On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <
>>>>>>>>>>>>> zs1kwa@gmail.com> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>>> Hi All,
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW"
>>>>>>>>>>>>>> when used in an RFNoC project.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> The core responds correctly when simulated outside the RFNoC
>>>>>>>>>>>>>> environment. (I can see correct output, the AXI streaming signalling,
>>>>>>>>>>>>>> back-pressure when required, etc.)
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> I'm not sure how to go about debugging this, and am not yet
>>>>>>>>>>>>>> familiar enough with RFNoC to know what to ask.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> I have been thinking it was the core not being reset or
>>>>>>>>>>>>>> clocked correctly, but this is how it gets instantiated:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>   multiddc multiddc_i (
>>>>>>>>>>>>>>     //   - Using different clocks for the IP core and the AXI
>>>>>>>>>>>>>> interface. The IPCore_Clk and AXILite_ACLK must be
>>>>>>>>>>>>>>     //     synchronous and connected to the same clock
>>>>>>>>>>>>>> source. The IPCore_RESETN and AXILite_ARESETN must be
>>>>>>>>>>>>>>     //     connected to the same reset source. See
>>>>>>>>>>>>>> Synchronization of Global Reset Signal to IP Core Clock Domain.
>>>>>>>>>>>>>>     .IPCORE_CLK                (axis_data_clk),
>>>>>>>>>>>>>>     .IPCORE_RESETN             (~axis_data_rst),
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>     .AXI4_Lite_ACLK            (axis_data_clk),
>>>>>>>>>>>>>>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> The core YAML file describes the clock as:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> data:
>>>>>>>>>>>>>>   fpga_iface: axis_chdr
>>>>>>>>>>>>>>   clk_domain: ce
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> In the project YAML file:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> clk_domains:
>>>>>>>>>>>>>>     - { srcblk: _device_, srcport: radio, dstblk: radio0,
>>>>>>>>>>>>>> dstport: radio }
>>>>>>>>>>>>>>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0,
>>>>>>>>>>>>>> dstport: ce }
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Is there something that might be an obvious first place to
>>>>>>>>>>>>>> check?
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Many thanks, Kevin
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> --
>>>>>>>>>>>>>> Kevin Williams
>>>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>>>>>> To unsubscribe send an email to
>>>>>>>>>>>>>> usrp-users-leave@lists.ettus.com
>>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>> --
>>>>>>>>>>>> Kevin Williams
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> --
>>>>>>>>>> Kevin Williams
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>
>>>>>>>> --
>>>>>>>> Kevin Williams
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>>
>>>>
>>>> --
>>>> Kevin Williams
>>>>
>>>
>>
>> --
>> Kevin Williams
>>
>
>
> --
> Kevin Williams
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b13aaf05e8a514fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I believe the AXI spec says that data should be presented =
when valid, and the tready signal just accepts that data.=C2=A0 You can&#39=
;t rely on tready to be asserted before asserting tvalid.<div><br></div><di=
v>With that being said, I have no idea if this is the source of any of your=
 issues.</div><div><br></div><div>Brian</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 11:28 =
AM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com">zs1kwa@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi, I don&#39;t seem to b=
e able to get TREADY&#39;s asserted for my core in a testbench. (See the &q=
uot;XXXXX&#39;s&quot; in the testbench below. The symptom is that the &quot=
;recv_items&quot; blocks until the test times out.)=C2=A0<div><br></div><di=
v>Without that check the &quot;send_items&quot; call is fine, and I can see=
 the transaction progressing on that interface.</div><div><br></div><div>I&=
#39;m sure this is a case of me missing something?</div><div><br></div><div=
><div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);font-f=
amily:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;line-height=
:19px;white-space:pre-wrap"><div><span style=3D"color:rgb(106,153,85)">//</=
span></div><div><span style=3D"color:rgb(106,153,85)">// Copyright 2022 Ett=
us Research, a National Instruments Brand</span></div><div><span style=3D"c=
olor:rgb(106,153,85)">//</span></div><div><span style=3D"color:rgb(106,153,=
85)">// SPDX-License-Identifier: LGPL-3.0-or-later</span></div><div><span s=
tyle=3D"color:rgb(106,153,85)">//</span></div><div><span style=3D"color:rgb=
(106,153,85)">// Module: rfnoc_block_multiddc_tb</span></div><div><span sty=
le=3D"color:rgb(106,153,85)">//</span></div><div><span style=3D"color:rgb(1=
06,153,85)">// Description: Testbench for the multiddc RFNoC block.</span><=
/div><div><span style=3D"color:rgb(106,153,85)">//</span></div><br><div>`de=
fault_nettype <span style=3D"color:rgb(156,220,254)">none</span></div><br><=
br><div><span style=3D"color:rgb(197,134,192)">module</span> <span style=3D=
"color:rgb(78,201,176)">rfnoc_block_multiddc_tb</span>;</div><br><div>=C2=
=A0 `include <span style=3D"color:rgb(206,145,120)">&quot;test_exec.svh&quo=
t;</span></div><br><div>=C2=A0 <span style=3D"color:rgb(197,134,192)">impor=
t</span> <span style=3D"color:rgb(78,201,176)">PkgTestExec</span>::*;</div>=
<div>=C2=A0 <span style=3D"color:rgb(197,134,192)">import</span> <span styl=
e=3D"color:rgb(78,201,176)">PkgChdrUtils</span>::*;</div><div>=C2=A0 <span =
style=3D"color:rgb(197,134,192)">import</span> <span style=3D"color:rgb(78,=
201,176)">PkgRfnocBlockCtrlBfm</span>::*;</div><div>=C2=A0 <span style=3D"c=
olor:rgb(197,134,192)">import</span> <span style=3D"color:rgb(78,201,176)">=
PkgRfnocItemUtils</span>::*;</div><br><div>=C2=A0 <span style=3D"color:rgb(=
106,153,85)">//------------------------------------------------------------=
---------------</span></div><div>=C2=A0 <span style=3D"color:rgb(106,153,85=
)">// Testbench Configuration</span></div><div>=C2=A0 <span style=3D"color:=
rgb(106,153,85)">//--------------------------------------------------------=
-------------------</span></div><br><div>=C2=A0 <span style=3D"color:rgb(86=
,156,214)">localparam</span> [<span style=3D"color:rgb(181,206,168)">31</sp=
an>:<span style=3D"color:rgb(181,206,168)">0</span>] NOC_ID =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D <span style=3D"color:rgb(181,206,168)">32&#39;h951E=
399F</span>;</div><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">localpa=
ram</span> [ <span style=3D"color:rgb(181,206,168)">9</span>:<span style=3D=
"color:rgb(181,206,168)">0</span>] THIS_PORTID =C2=A0 =C2=A0 =3D <span styl=
e=3D"color:rgb(181,206,168)">10&#39;h123</span>;</div><div>=C2=A0 <span sty=
le=3D"color:rgb(86,156,214)">localparam int</span> =C2=A0 =C2=A0CHDR_W =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D <span style=3D"color:rgb(181,206,168)">6=
4</span>; =C2=A0 =C2=A0<span style=3D"color:rgb(106,153,85)">// CHDR size i=
n bits</span></div><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">localp=
aram int</span> =C2=A0 =C2=A0MTU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D <span style=3D"color:rgb(181,206,168)">10</span>; =C2=A0 =C2=A0<span st=
yle=3D"color:rgb(106,153,85)">// Log2 of max transmission unit in CHDR word=
s</span></div><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">localparam =
int</span> =C2=A0 =C2=A0NUM_PORTS =C2=A0 =C2=A0 =C2=A0 =3D <span style=3D"c=
olor:rgb(181,206,168)">1</span>;</div><div>=C2=A0 <span style=3D"color:rgb(=
86,156,214)">localparam int</span> =C2=A0 =C2=A0NUM_PORTS_I =C2=A0 =C2=A0 =
=3D <span style=3D"color:rgb(181,206,168)">1</span>;</div><div>=C2=A0 <span=
 style=3D"color:rgb(86,156,214)">localparam int</span> =C2=A0 =C2=A0NUM_POR=
TS_O =C2=A0 =C2=A0 =3D <span style=3D"color:rgb(181,206,168)">5</span>;</di=
v><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">localparam int</span> =
=C2=A0 =C2=A0ITEM_W =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D <span style=3D"co=
lor:rgb(181,206,168)">32</span>; =C2=A0 =C2=A0<span style=3D"color:rgb(106,=
153,85)">// Sample size in bits</span></div><div>=C2=A0 <span style=3D"colo=
r:rgb(86,156,214)">localparam int</span> =C2=A0 =C2=A0SPP =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D <span style=3D"color:rgb(181,206,168)">64</spa=
n>; =C2=A0 =C2=A0<span style=3D"color:rgb(106,153,85)">// Samples per packe=
t</span></div><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">localparam =
int</span> =C2=A0 =C2=A0PKT_SIZE_BYTES =C2=A0=3D SPP * (ITEM_W/<span style=
=3D"color:rgb(181,206,168)">8</span>);</div><div>=C2=A0 <span style=3D"colo=
r:rgb(86,156,214)">localparam int</span> =C2=A0 =C2=A0STALL_PROB =C2=A0 =C2=
=A0 =C2=A0=3D <span style=3D"color:rgb(181,206,168)">25</span>; =C2=A0 =C2=
=A0<span style=3D"color:rgb(106,153,85)">// Default BFM stall probability</=
span></div><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">localparam rea=
l</span> =C2=A0 CHDR_CLK_PER =C2=A0 =C2=A0=3D <span style=3D"color:rgb(181,=
206,168)">5</span>.<span style=3D"color:rgb(181,206,168)">0</span>; =C2=A0 =
<span style=3D"color:rgb(106,153,85)">// 200 MHz</span></div><div>=C2=A0 <s=
pan style=3D"color:rgb(86,156,214)">localparam real</span> =C2=A0 CTRL_CLK_=
PER =C2=A0 =C2=A0=3D <span style=3D"color:rgb(181,206,168)">8</span>.<span =
style=3D"color:rgb(181,206,168)">0</span>; =C2=A0 <span style=3D"color:rgb(=
106,153,85)">// 125 MHz</span></div><div>=C2=A0 <span style=3D"color:rgb(86=
,156,214)">localparam real</span> =C2=A0 CE_CLK_PER =C2=A0 =C2=A0 =C2=A0=3D=
 <span style=3D"color:rgb(181,206,168)">4</span>.<span style=3D"color:rgb(1=
81,206,168)">0</span>; =C2=A0 <span style=3D"color:rgb(106,153,85)">// 250 =
MHz</span></div><br><div>=C2=A0 <span style=3D"color:rgb(106,153,85)">//---=
------------------------------------------------------------------------</s=
pan></div><div>=C2=A0 <span style=3D"color:rgb(106,153,85)">// Clocks and R=
esets</span></div><div>=C2=A0 <span style=3D"color:rgb(106,153,85)">//-----=
----------------------------------------------------------------------</spa=
n></div><br><div><span style=3D"color:rgb(86,156,214)">=C2=A0 bit</span> rf=
noc_chdr_clk;</div><div><span style=3D"color:rgb(86,156,214)">=C2=A0 bit</s=
pan> rfnoc_ctrl_clk;</div><div><span style=3D"color:rgb(86,156,214)">=C2=A0=
 bit</span> ce_clk;</div><br><div>=C2=A0 <span style=3D"color:rgb(86,156,21=
4)">sim_clock_gen</span> #(CHDR_CLK_PER) <span style=3D"color:rgb(78,201,17=
6)">rfnoc_chdr_clk_gen</span> (.<span style=3D"color:rgb(220,220,170)">clk<=
/span>(rfnoc_chdr_clk), .<span style=3D"color:rgb(220,220,170)">rst</span>(=
));</div><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">sim_clock_gen</s=
pan> #(CTRL_CLK_PER) <span style=3D"color:rgb(78,201,176)">rfnoc_ctrl_clk_g=
en</span> (.<span style=3D"color:rgb(220,220,170)">clk</span>(rfnoc_ctrl_cl=
k), .<span style=3D"color:rgb(220,220,170)">rst</span>());</div><div>=C2=A0=
 <span style=3D"color:rgb(86,156,214)">sim_clock_gen</span> #(CE_CLK_PER) <=
span style=3D"color:rgb(78,201,176)">ce_clk_gen</span> (.<span style=3D"col=
or:rgb(220,220,170)">clk</span>(ce_clk), .<span style=3D"color:rgb(220,220,=
170)">rst</span>());</div><br><div>=C2=A0 <span style=3D"color:rgb(106,153,=
85)">//--------------------------------------------------------------------=
-------</span></div><div>=C2=A0 <span style=3D"color:rgb(106,153,85)">// Bu=
s Functional Models</span></div><div>=C2=A0 <span style=3D"color:rgb(106,15=
3,85)">//------------------------------------------------------------------=
---------</span></div><br><div>=C2=A0 <span style=3D"color:rgb(106,153,85)"=
>// Backend Interface</span></div><div>=C2=A0 <span style=3D"color:rgb(86,1=
56,214)">RfnocBackendIf</span> <span style=3D"color:rgb(78,201,176)">backen=
d</span> (rfnoc_chdr_clk, rfnoc_ctrl_clk);</div><br><div>=C2=A0 <span style=
=3D"color:rgb(106,153,85)">// AXIS-Ctrl Interface</span></div><div>=C2=A0 <=
span style=3D"color:rgb(86,156,214)">AxiStreamIf</span> #(<span style=3D"co=
lor:rgb(181,206,168)">32</span>) <span style=3D"color:rgb(78,201,176)">m_ct=
rl</span> (rfnoc_ctrl_clk, <span style=3D"color:rgb(181,206,168)">1&#39;b0<=
/span>);</div><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">AxiStreamIf=
</span> #(<span style=3D"color:rgb(181,206,168)">32</span>) <span style=3D"=
color:rgb(78,201,176)">s_ctrl</span> (rfnoc_ctrl_clk, <span style=3D"color:=
rgb(181,206,168)">1&#39;b0</span>);</div><br><div>=C2=A0 <span style=3D"col=
or:rgb(106,153,85)">// AXIS-CHDR Interfaces</span></div><div>=C2=A0 <span s=
tyle=3D"color:rgb(86,156,214)">AxiStreamIf</span> #(CHDR_W) m_chdr [NUM_POR=
TS_I] (rfnoc_chdr_clk, <span style=3D"color:rgb(181,206,168)">1&#39;b0</spa=
n>);</div><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">AxiStreamIf</sp=
an> #(CHDR_W) s_chdr [NUM_PORTS_O] (rfnoc_chdr_clk, <span style=3D"color:rg=
b(181,206,168)">1&#39;b0</span>);</div><br><div>=C2=A0 <span style=3D"color=
:rgb(106,153,85)">// Block Controller BFM</span></div><div>=C2=A0 <span sty=
le=3D"color:rgb(86,156,214)">RfnocBlockCtrlBfm</span> #(CHDR_W, ITEM_W) blk=
_ctrl =3D <span style=3D"color:rgb(197,134,192)">new</span>(backend, m_ctrl=
, s_ctrl);</div><br><div>=C2=A0 <span style=3D"color:rgb(106,153,85)">// CH=
DR word and item/sample data types</span></div><div>=C2=A0 <span style=3D"c=
olor:rgb(197,134,192)">typedef</span> <span style=3D"color:rgb(86,156,214)"=
>ChdrData</span> #(CHDR_W, ITEM_W)::chdr_word_t <span style=3D"color:rgb(22=
0,220,170)">chdr_word_t</span>;</div><div>=C2=A0 <span style=3D"color:rgb(1=
97,134,192)">typedef</span> <span style=3D"color:rgb(86,156,214)">ChdrData<=
/span> #(CHDR_W, ITEM_W)::item_t =C2=A0 =C2=A0 =C2=A0<span style=3D"color:r=
gb(220,220,170)">item_t</span>;</div><br><div>=C2=A0 <span style=3D"color:r=
gb(106,153,85)">// Connect block controller to BFMs</span></div><div>=C2=A0=
 <span style=3D"color:rgb(197,134,192)">for</span> (<span style=3D"color:rg=
b(86,156,214)">genvar</span> i =3D <span style=3D"color:rgb(181,206,168)">0=
</span>; i &lt; NUM_PORTS_I; i++) <span style=3D"color:rgb(86,156,214)">beg=
in</span> : gen_bfm_input_connections</div><div>=C2=A0 =C2=A0 <span style=
=3D"color:rgb(197,134,192)">initial</span> <span style=3D"color:rgb(197,134=
,192)">begin</span></div><div>=C2=A0 =C2=A0 =C2=A0 blk_ctrl.<span style=3D"=
color:rgb(220,220,170)">connect_master_data_port</span>(i, m_chdr[i], PKT_S=
IZE_BYTES);</div><div>=C2=A0 =C2=A0 =C2=A0 blk_ctrl.<span style=3D"color:rg=
b(220,220,170)">set_master_stall_prob</span>(i, STALL_PROB);</div><div>=C2=
=A0 =C2=A0 <span style=3D"color:rgb(197,134,192)">end</span></div><div>=C2=
=A0 <span style=3D"color:rgb(197,134,192)">end</span></div><div>=C2=A0 <spa=
n style=3D"color:rgb(197,134,192)">for</span> (<span style=3D"color:rgb(86,=
156,214)">genvar</span> i =3D <span style=3D"color:rgb(181,206,168)">0</spa=
n>; i &lt; NUM_PORTS_O; i++) <span style=3D"color:rgb(86,156,214)">begin</s=
pan> : gen_bfm_output_connections</div><div>=C2=A0 =C2=A0 <span style=3D"co=
lor:rgb(197,134,192)">initial</span> <span style=3D"color:rgb(197,134,192)"=
>begin</span></div><div>=C2=A0 =C2=A0 =C2=A0 blk_ctrl.<span style=3D"color:=
rgb(220,220,170)">connect_slave_data_port</span>(i, s_chdr[i]);</div><div>=
=C2=A0 =C2=A0 =C2=A0 blk_ctrl.<span style=3D"color:rgb(220,220,170)">set_sl=
ave_stall_prob</span>(i, STALL_PROB);</div><div>=C2=A0 =C2=A0 <span style=
=3D"color:rgb(197,134,192)">end</span></div><div>=C2=A0 <span style=3D"colo=
r:rgb(197,134,192)">end</span></div><br><div>=C2=A0 <span style=3D"color:rg=
b(106,153,85)">//----------------------------------------------------------=
-----------------</span></div><div>=C2=A0 <span style=3D"color:rgb(106,153,=
85)">// Device Under Test (DUT)</span></div><div>=C2=A0 <span style=3D"colo=
r:rgb(106,153,85)">//------------------------------------------------------=
---------------------</span></div><br><div>=C2=A0 <span style=3D"color:rgb(=
106,153,85)">// DUT Slave (Input) Port Signals</span></div><div><span style=
=3D"color:rgb(86,156,214)">=C2=A0 logic</span> [CHDR_W*NUM_PORTS_I-<span st=
yle=3D"color:rgb(181,206,168)">1</span>:<span style=3D"color:rgb(181,206,16=
8)">0</span>] s_rfnoc_chdr_tdata;</div><div><span style=3D"color:rgb(86,156=
,214)">=C2=A0 logic</span> [ =C2=A0 =C2=A0 =C2=A0 NUM_PORTS_I-<span style=
=3D"color:rgb(181,206,168)">1</span>:<span style=3D"color:rgb(181,206,168)"=
>0</span>] s_rfnoc_chdr_tlast;</div><div><span style=3D"color:rgb(86,156,21=
4)">=C2=A0 logic</span> [ =C2=A0 =C2=A0 =C2=A0 NUM_PORTS_I-<span style=3D"c=
olor:rgb(181,206,168)">1</span>:<span style=3D"color:rgb(181,206,168)">0</s=
pan>] s_rfnoc_chdr_tvalid;</div><div><span style=3D"color:rgb(86,156,214)">=
=C2=A0 logic</span> [ =C2=A0 =C2=A0 =C2=A0 NUM_PORTS_I-<span style=3D"color=
:rgb(181,206,168)">1</span>:<span style=3D"color:rgb(181,206,168)">0</span>=
] s_rfnoc_chdr_tready;</div><br><div>=C2=A0 <span style=3D"color:rgb(106,15=
3,85)">// DUT Master (Output) Port Signals</span></div><div><span style=3D"=
color:rgb(86,156,214)">=C2=A0 logic</span> [CHDR_W*NUM_PORTS_O-<span style=
=3D"color:rgb(181,206,168)">1</span>:<span style=3D"color:rgb(181,206,168)"=
>0</span>] m_rfnoc_chdr_tdata;</div><div><span style=3D"color:rgb(86,156,21=
4)">=C2=A0 logic</span> [ =C2=A0 =C2=A0 =C2=A0 NUM_PORTS_O-<span style=3D"c=
olor:rgb(181,206,168)">1</span>:<span style=3D"color:rgb(181,206,168)">0</s=
pan>] m_rfnoc_chdr_tlast;</div><div><span style=3D"color:rgb(86,156,214)">=
=C2=A0 logic</span> [ =C2=A0 =C2=A0 =C2=A0 NUM_PORTS_O-<span style=3D"color=
:rgb(181,206,168)">1</span>:<span style=3D"color:rgb(181,206,168)">0</span>=
] m_rfnoc_chdr_tvalid;</div><div><span style=3D"color:rgb(86,156,214)">=C2=
=A0 logic</span> [ =C2=A0 =C2=A0 =C2=A0 NUM_PORTS_O-<span style=3D"color:rg=
b(181,206,168)">1</span>:<span style=3D"color:rgb(181,206,168)">0</span>] m=
_rfnoc_chdr_tready;</div><br><div>=C2=A0 <span style=3D"color:rgb(106,153,8=
5)">// Map the array of BFMs to a flat vector for the DUT connections</span=
></div><div>=C2=A0 <span style=3D"color:rgb(197,134,192)">for</span> (<span=
 style=3D"color:rgb(86,156,214)">genvar</span> i =3D <span style=3D"color:r=
gb(181,206,168)">0</span>; i &lt; NUM_PORTS_I; i++) <span style=3D"color:rg=
b(86,156,214)">begin</span> : gen_dut_input_connections</div><div>=C2=A0 =
=C2=A0 <span style=3D"color:rgb(106,153,85)">// Connect BFM master to DUT s=
lave port</span></div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(197,134,1=
92)">assign</span> s_rfnoc_chdr_tdata[CHDR_W*i+:CHDR_W] =3D m_chdr[i].tdata=
;</div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(197,134,192)">assign</sp=
an> s_rfnoc_chdr_tlast[i] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D m_chdr[i].tlast;</div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb=
(197,134,192)">assign</span> s_rfnoc_chdr_tvalid[i] =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D m_chdr[i].tvalid;</div><div>=C2=A0 =C2=A0 <=
span style=3D"color:rgb(197,134,192)">assign</span> m_chdr[i].tready =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D s_rfnoc=
_chdr_tready[i];</div><div>=C2=A0 <span style=3D"color:rgb(197,134,192)">en=
d</span></div><div>=C2=A0 <span style=3D"color:rgb(197,134,192)">for</span>=
 (<span style=3D"color:rgb(86,156,214)">genvar</span> i =3D <span style=3D"=
color:rgb(181,206,168)">0</span>; i &lt; NUM_PORTS_O; i++) <span style=3D"c=
olor:rgb(86,156,214)">begin</span> : gen_dut_output_connections</div><div>=
=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// Connect BFM slave to=
 DUT master port</span></div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(19=
7,134,192)">assign</span> s_chdr[i].tdata =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D m_=
rfnoc_chdr_tdata[CHDR_W*i+:CHDR_W];</div><div>=C2=A0 =C2=A0 <span style=3D"=
color:rgb(197,134,192)">assign</span> s_chdr[i].tlast =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D m_rfnoc_chdr_tlast[i];</div><div>=C2=A0 =C2=A0 <span style=3D"col=
or:rgb(197,134,192)">assign</span> s_chdr[i].tvalid =C2=A0 =C2=A0 =C2=A0 =
=3D m_rfnoc_chdr_tvalid[i];</div><div>=C2=A0 =C2=A0 <span style=3D"color:rg=
b(197,134,192)">assign</span> m_rfnoc_chdr_tready[i] =3D s_chdr[i].tready;<=
/div><div>=C2=A0 <span style=3D"color:rgb(197,134,192)">end</span></div><br=
><div>=C2=A0 <span style=3D"color:rgb(86,156,214)">rfnoc_block_multiddc</sp=
an> #(</div><div>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">THIS=
_PORTID</span> =C2=A0 =C2=A0 =C2=A0 =C2=A0 (THIS_PORTID),</div><div>=C2=A0 =
=C2=A0 .<span style=3D"color:rgb(220,220,170)">CHDR_W</span> =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(CHDR_W),</div><div>=C2=A0 =C2=A0 .<span =
style=3D"color:rgb(220,220,170)">MTU</span> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (MTU),</div><div>=C2=A0 =C2=A0 .<span style=3D"col=
or:rgb(220,220,170)">NUM_PORTS</span> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (N=
UM_PORTS)</div><div>=C2=A0 ) <span style=3D"color:rgb(78,201,176)">dut</spa=
n> (</div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// .rfno=
c_chdr_clk =C2=A0 =C2=A0 =C2=A0(rfnoc_chdr_clk),</span></div><div>=C2=A0 =
=C2=A0 <span style=3D"color:rgb(106,153,85)">// .rfnoc_ctrl_clk =C2=A0 =C2=
=A0 =C2=A0(rfnoc_ctrl_clk),</span></div><div>=C2=A0 =C2=A0 .<span style=3D"=
color:rgb(220,220,170)">rfnoc_chdr_clk</span> =C2=A0 =C2=A0 =C2=A0(backend.=
<span style=3D"color:rgb(220,220,170)">chdr_clk</span>),</div><div>=C2=A0 =
=C2=A0 .<span style=3D"color:rgb(220,220,170)">rfnoc_ctrl_clk</span> =C2=A0=
 =C2=A0 =C2=A0(backend.<span style=3D"color:rgb(220,220,170)">ctrl_clk</spa=
n>),</div><div>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">ce_clk=
</span> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(ce_clk),</div><div=
>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">rfnoc_core_config</s=
pan> =C2=A0 (backend.<span style=3D"color:rgb(220,220,170)">cfg</span>),</d=
iv><div>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">rfnoc_core_st=
atus</span> =C2=A0 (backend.<span style=3D"color:rgb(220,220,170)">sts</spa=
n>),</div><div>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">s_rfno=
c_chdr_tdata</span> =C2=A0(s_rfnoc_chdr_tdata),</div><div>=C2=A0 =C2=A0 .<s=
pan style=3D"color:rgb(220,220,170)">s_rfnoc_chdr_tlast</span> =C2=A0(s_rfn=
oc_chdr_tlast),</div><div>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,1=
70)">s_rfnoc_chdr_tvalid</span> (s_rfnoc_chdr_tvalid),</div><div>=C2=A0 =C2=
=A0 .<span style=3D"color:rgb(220,220,170)">s_rfnoc_chdr_tready</span> (s_r=
fnoc_chdr_tready),</div><div>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,22=
0,170)">m_rfnoc_chdr_tdata</span> =C2=A0(m_rfnoc_chdr_tdata),</div><div>=C2=
=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">m_rfnoc_chdr_tlast</span=
> =C2=A0(m_rfnoc_chdr_tlast),</div><div>=C2=A0 =C2=A0 .<span style=3D"color=
:rgb(220,220,170)">m_rfnoc_chdr_tvalid</span> (m_rfnoc_chdr_tvalid),</div><=
div>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">m_rfnoc_chdr_trea=
dy</span> (m_rfnoc_chdr_tready),</div><div>=C2=A0 =C2=A0 .<span style=3D"co=
lor:rgb(220,220,170)">s_rfnoc_ctrl_tdata</span> =C2=A0(m_ctrl.<span style=
=3D"color:rgb(220,220,170)">tdata</span>),</div><div>=C2=A0 =C2=A0 .<span s=
tyle=3D"color:rgb(220,220,170)">s_rfnoc_ctrl_tlast</span> =C2=A0(m_ctrl.<sp=
an style=3D"color:rgb(220,220,170)">tlast</span>),</div><div>=C2=A0 =C2=A0 =
.<span style=3D"color:rgb(220,220,170)">s_rfnoc_ctrl_tvalid</span> (m_ctrl.=
<span style=3D"color:rgb(220,220,170)">tvalid</span>),</div><div>=C2=A0 =C2=
=A0 .<span style=3D"color:rgb(220,220,170)">s_rfnoc_ctrl_tready</span> (m_c=
trl.<span style=3D"color:rgb(220,220,170)">tready</span>),</div><div>=C2=A0=
 =C2=A0 .<span style=3D"color:rgb(220,220,170)">m_rfnoc_ctrl_tdata</span> =
=C2=A0(s_ctrl.<span style=3D"color:rgb(220,220,170)">tdata</span>),</div><d=
iv>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">m_rfnoc_ctrl_tlast=
</span> =C2=A0(s_ctrl.<span style=3D"color:rgb(220,220,170)">tlast</span>),=
</div><div>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">m_rfnoc_ct=
rl_tvalid</span> (s_ctrl.<span style=3D"color:rgb(220,220,170)">tvalid</spa=
n>),</div><div>=C2=A0 =C2=A0 .<span style=3D"color:rgb(220,220,170)">m_rfno=
c_ctrl_tready</span> (s_ctrl.<span style=3D"color:rgb(220,220,170)">tready<=
/span>)</div><div>=C2=A0 );</div><br><div>=C2=A0 <span style=3D"color:rgb(1=
06,153,85)">// Generate a random signed 16-bit integer in the range [a, b]<=
/span></div><div>=C2=A0 <span style=3D"color:rgb(197,134,192)">function</sp=
an><span style=3D"color:rgb(86,156,214)"> shortint</span> <span style=3D"co=
lor:rgb(220,220,170)">rand_shortint</span>(<span style=3D"color:rgb(86,156,=
214)">int</span> a,<span style=3D"color:rgb(86,156,214)"> int</span> b);</d=
iv><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(197,134,192)">return</span> =
<span style=3D"color:rgb(86,156,214)">signed</span>&#39;(<span style=3D"col=
or:rgb(220,220,170)">$urandom_range</span>(b - a)) + a;</div><div>=C2=A0 <s=
pan style=3D"color:rgb(197,134,192)">endfunction</span> : rand_shortint</di=
v><br><div>=C2=A0 <span style=3D"color:rgb(106,153,85)">//-----------------=
----------------------------------------------------------</span></div><div=
>=C2=A0 <span style=3D"color:rgb(106,153,85)">// Main Test Process</span></=
div><div>=C2=A0 <span style=3D"color:rgb(106,153,85)">//-------------------=
--------------------------------------------------------</span></div><br><d=
iv>=C2=A0 <span style=3D"color:rgb(197,134,192)">initial</span> <span style=
=3D"color:rgb(86,156,214)">begin</span> : tb_main</div><br><div>=C2=A0 =C2=
=A0 <span style=3D"color:rgb(220,220,170)">$monitor</span>(<span style=3D"c=
olor:rgb(220,220,170)">$time</span>, <span style=3D"color:rgb(206,145,120)"=
>&quot; s_rfnoc_chdr_tdata=3D&#39;b</span><span style=3D"color:rgb(156,220,=
254)">%b</span><span style=3D"color:rgb(206,145,120)">&quot;</span>, s_rfno=
c_chdr_tdata);</div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(220,220,170=
)">$monitor</span>(<span style=3D"color:rgb(220,220,170)">$time</span>, <sp=
an style=3D"color:rgb(206,145,120)">&quot; s_rfnoc_chdr_tvalid=3D&#39;</spa=
n><span style=3D"color:rgb(156,220,254)">%d</span><span style=3D"color:rgb(=
206,145,120)">&quot;</span>, s_rfnoc_chdr_tvalid);</div><div>=C2=A0 =C2=A0 =
<span style=3D"color:rgb(220,220,170)">$monitor</span>(<span style=3D"color=
:rgb(220,220,170)">$time</span>, <span style=3D"color:rgb(206,145,120)">&qu=
ot; s_rfnoc_chdr_tready=3D&#39;</span><span style=3D"color:rgb(156,220,254)=
">%d</span><span style=3D"color:rgb(206,145,120)">&quot;</span>, s_rfnoc_ch=
dr_tready);</div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(220,220,170)">=
$monitor</span>(<span style=3D"color:rgb(220,220,170)">$time</span>, <span =
style=3D"color:rgb(206,145,120)">&quot; s_rfnoc_chdr_tlast=3D&#39;</span><s=
pan style=3D"color:rgb(156,220,254)">%d</span><span style=3D"color:rgb(206,=
145,120)">&quot;</span>, s_rfnoc_chdr_tlast);</div><br><div>=C2=A0 =C2=A0 <=
span style=3D"color:rgb(220,220,170)">$monitor</span>(<span style=3D"color:=
rgb(220,220,170)">$time</span>, <span style=3D"color:rgb(206,145,120)">&quo=
t; m_rfnoc_chdr_tdata=3D&#39;b</span><span style=3D"color:rgb(156,220,254)"=
>%b</span><span style=3D"color:rgb(206,145,120)">&quot;</span>, m_rfnoc_chd=
r_tdata);</div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(220,220,170)">$m=
onitor</span>(<span style=3D"color:rgb(220,220,170)">$time</span>, <span st=
yle=3D"color:rgb(206,145,120)">&quot; m_rfnoc_chdr_tvalid=3D&#39;b</span><s=
pan style=3D"color:rgb(156,220,254)">%b</span><span style=3D"color:rgb(206,=
145,120)">&quot;</span>, m_rfnoc_chdr_tvalid);</div><div>=C2=A0 =C2=A0 <spa=
n style=3D"color:rgb(220,220,170)">$monitor</span>(<span style=3D"color:rgb=
(220,220,170)">$time</span>, <span style=3D"color:rgb(206,145,120)">&quot; =
m_rfnoc_chdr_tready=3D&#39;b</span><span style=3D"color:rgb(156,220,254)">%=
b</span><span style=3D"color:rgb(206,145,120)">&quot;</span>, m_rfnoc_chdr_=
tready);</div><br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">=
// Initialize the test exec object for this testbench</span></div><div>=C2=
=A0 =C2=A0 test.<span style=3D"color:rgb(220,220,170)">start_tb</span>(<spa=
n style=3D"color:rgb(206,145,120)">&quot;rfnoc_block_multiddc_tb&quot;</spa=
n>);</div><br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// S=
tart the BFMs running</span></div><div>=C2=A0 =C2=A0 blk_ctrl.<span style=
=3D"color:rgb(220,220,170)">run</span>();</div><br><div>=C2=A0 =C2=A0 <span=
 style=3D"color:rgb(106,153,85)">//--------------------------------</span><=
/div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// Reset</spa=
n></div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">//--------=
------------------------</span></div><br><div>=C2=A0 =C2=A0 test.<span styl=
e=3D"color:rgb(220,220,170)">start_test</span>(<span style=3D"color:rgb(206=
,145,120)">&quot;Flush block then reset it&quot;</span>, <span style=3D"col=
or:rgb(181,206,168)">10us</span>);</div><div>=C2=A0 =C2=A0 blk_ctrl.<span s=
tyle=3D"color:rgb(220,220,170)">flush_and_reset</span>();</div><div>=C2=A0 =
=C2=A0 test.<span style=3D"color:rgb(220,220,170)">end_test</span>();</div>=
<br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// Start the c=
locks running. We wait to start them until this testbench</span></div><div>=
=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// runs because we don&=
#39;t want to waste the simulator&#39;s CPU time by</span></div><div>=C2=A0=
 =C2=A0 <span style=3D"color:rgb(106,153,85)">// simulating idle clock cycl=
es.</span></div><div>=C2=A0 =C2=A0 rfnoc_chdr_clk_gen.<span style=3D"color:=
rgb(220,220,170)">start</span>();</div><div>=C2=A0 =C2=A0 rfnoc_ctrl_clk_ge=
n.<span style=3D"color:rgb(220,220,170)">start</span>();</div><div>=C2=A0 =
=C2=A0 ce_clk_gen.<span style=3D"color:rgb(220,220,170)">start</span>();</d=
iv><br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">//---------=
-----------------------</span></div><div>=C2=A0 =C2=A0 <span style=3D"color=
:rgb(106,153,85)">// Verify Block Info</span></div><div>=C2=A0 =C2=A0 <span=
 style=3D"color:rgb(106,153,85)">//--------------------------------</span><=
/div><br><div>=C2=A0 =C2=A0 test.<span style=3D"color:rgb(220,220,170)">sta=
rt_test</span>(<span style=3D"color:rgb(206,145,120)">&quot;Verify Block In=
fo&quot;</span>, <span style=3D"color:rgb(181,206,168)">2us</span>);</div><=
div>=C2=A0 =C2=A0 `ASSERT_ERROR(blk_ctrl.<span style=3D"color:rgb(220,220,1=
70)">get_noc_id</span>() =3D=3D NOC_ID, <span style=3D"color:rgb(206,145,12=
0)">&quot;Incorrect NOC_ID Value&quot;</span>);</div><div>=C2=A0 =C2=A0 `AS=
SERT_ERROR(blk_ctrl.<span style=3D"color:rgb(220,220,170)">get_num_data_i</=
span>() =3D=3D NUM_PORTS_I, <span style=3D"color:rgb(206,145,120)">&quot;In=
correct NUM_DATA_I Value&quot;</span>);</div><div>=C2=A0 =C2=A0 `ASSERT_ERR=
OR(blk_ctrl.<span style=3D"color:rgb(220,220,170)">get_num_data_o</span>() =
=3D=3D NUM_PORTS_O, <span style=3D"color:rgb(206,145,120)">&quot;Incorrect =
NUM_DATA_O Value&quot;</span>);</div><div>=C2=A0 =C2=A0 `ASSERT_ERROR(blk_c=
trl.<span style=3D"color:rgb(220,220,170)">get_mtu</span>() =3D=3D MTU, <sp=
an style=3D"color:rgb(206,145,120)">&quot;Incorrect MTU Value&quot;</span>)=
;</div><div>=C2=A0 =C2=A0 test.<span style=3D"color:rgb(220,220,170)">end_t=
est</span>();</div><br><div>=C2=A0 =C2=A0 test.<span style=3D"color:rgb(220=
,220,170)">start_test</span>(<span style=3D"color:rgb(206,145,120)">&quot;V=
erify Slave TREADY&quot;</span>, <span style=3D"color:rgb(181,206,168)">2us=
</span>);</div><div>=C2=A0 =C2=A0 `ASSERT_ERROR(s_rfnoc_chdr_tready =3D=3D =
<span style=3D"color:rgb(181,206,168)">1&#39;b1</span>, <span style=3D"colo=
r:rgb(206,145,120)">&quot;Slave TREADY is not 1&quot;</span>);</div><div>=
=C2=A0 =C2=A0 test.<span style=3D"color:rgb(220,220,170)">end_test</span>()=
;</div><br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">//-----=
---------------------------</span></div><div>=C2=A0 =C2=A0 <span style=3D"c=
olor:rgb(106,153,85)">// Test Sequences</span></div><div>=C2=A0 =C2=A0 <spa=
n style=3D"color:rgb(106,153,85)">//--------------------------------</span>=
</div><br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// begin=
</span></div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// =
=C2=A0 // Read and write the gain register to make sure it updates correctl=
y.</span></div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// =
=C2=A0 logic [31:0] val32;</span></div><div>=C2=A0 =C2=A0 <span style=3D"co=
lor:rgb(106,153,85)">// =C2=A0 test.start_test(&quot;Verify a register&quot=
;, 5us);</span></div><br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,15=
3,85)">// =C2=A0 blk_ctrl.reg_read(256, val32);</span></div><div>=C2=A0 =C2=
=A0 <span style=3D"color:rgb(106,153,85)">// =C2=A0 `ASSERT_ERROR(</span></=
div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// =C2=A0 =C2=
=A0 val32 =3D=3D 0, &quot;Initial value for 0x100 is not 0&quot;);</span></=
div><br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// =C2=A0 =
// Write a value wider than the register to verify the width</span></div><d=
iv>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// =C2=A0 blk_ctrl.r=
eg_write(256, 32&#39;h12348765);</span></div><div>=C2=A0 =C2=A0 <span style=
=3D"color:rgb(106,153,85)">// =C2=A0 blk_ctrl.reg_read(256, val32);</span><=
/div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// =C2=A0 `AS=
SERT_ERROR(</span></div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153=
,85)">// =C2=A0 =C2=A0 val32 =3D=3D 32&#39;h8765, &quot;Readback value for =
0x100 is not correct&quot;);</span></div><br><div>=C2=A0 =C2=A0 <span style=
=3D"color:rgb(106,153,85)">// =C2=A0 test.end_test();</span></div><div>=C2=
=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// end</span></div><br><di=
v>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// &lt;Add your test =
code here&gt;</span></div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,1=
53,85)">// test.start_test(&quot;&lt;Name your first test&gt;&quot;, 100us)=
;</span></div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// `=
ASSERT_WARNING(0, &quot;This testbench doesn&#39;t test anything yet!&quot;=
);</span></div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// =
test.end_test();</span></div><br><div>=C2=A0 =C2=A0 <span style=3D"color:rg=
b(197,134,192)">begin</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span st=
yle=3D"color:rgb(86,156,214)">localparam shortint</span> MAX_TEST_VAL =3D =
=C2=A0<span style=3D"color:rgb(181,206,168)">255</span>;</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(86,156,214)">localparam short=
int</span> MIN_TEST_VAL =3D -<span style=3D"color:rgb(181,206,168)">255</sp=
an>;</div><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(86,=
156,214)">packet_info_t</span> pkt_info;</div><br><div>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 item_t send_samples[$]; =C2=A0 =C2=A0<span style=3D"color:rgb(106,1=
53,85)">// Sample words</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 item_t=
 recv_samples[$]; =C2=A0 =C2=A0<span style=3D"color:rgb(106,153,85)">// Sam=
ple words</span></div><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"c=
olor:rgb(106,153,85)">// Read and write the gain register to make sure it u=
pdates correctly.</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 test.<span s=
tyle=3D"color:rgb(220,220,170)">start_test</span>(<span style=3D"color:rgb(=
206,145,120)">&quot;Check data flows through multiddc&quot;</span>, <span s=
tyle=3D"color:rgb(181,206,168)">40us</span>);</div><br><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// Generate a payload o=
f random samples in the range [-255, 255], two</span></div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// samples per CHDR=
 word.</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 send_samples =3D {};</d=
iv><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(197,134,192)">=
for</span> (<span style=3D"color:rgb(86,156,214)">int</span> i =3D <span st=
yle=3D"color:rgb(181,206,168)">0</span>; i &lt; SPP; i++) <span style=3D"co=
lor:rgb(197,134,192)">begin</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 send_samples.<span style=3D"color:rgb(220,220,170)">push_back=
</span>({</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=
=3D"color:rgb(106,153,85)">// rand_shortint(MIN_TEST_VAL, MAX_TEST_VAL), =
=C2=A0// I</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span=
 style=3D"color:rgb(106,153,85)">// rand_shortint(MIN_TEST_VAL, MAX_TEST_VA=
L) =C2=A0 // Q</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <=
span style=3D"color:rgb(181,206,168)">16&#39;hff</span>,</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(181,206,168)">1=
6&#39;hff</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 });</d=
iv><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(197,134,192)">=
end</span></div><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:r=
gb(106,153,85)">// check that dut is ready to receive</span></div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 `ASSERT_ERROR(s_rfnoc_chdr_tready =3D=3D <span sty=
le=3D"color:rgb(181,206,168)">1&#39;b1</span>, <span style=3D"color:rgb(206=
,145,120)">&quot;Slave TREADY is not 1&quot;</span>);</div><br><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// wait for slav=
es to assert TREADY</span></div><div>// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
XXXXXXXXXXXXXXXXXXXXXXXXXXXX</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span st=
yle=3D"color:rgb(220,220,170)">$display</span>(<span style=3D"color:rgb(206=
,145,120)">&quot;Waiting for TREADY on the BFM slave...&quot;</span>);</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(197,134,192)">wa=
it</span>(m_rfnoc_chdr_tready !=3D <span style=3D"color:rgb(181,206,168)">5=
&#39;b00000</span>) <span style=3D"color:rgb(220,220,170)">$display</span>(=
<span style=3D"color:rgb(220,220,170)">$time</span>, <span style=3D"color:r=
gb(206,145,120)">&quot; m_rfnoc_chdr_tready=3D&#39;b</span><span style=3D"c=
olor:rgb(156,220,254)">%b</span><span style=3D"color:rgb(206,145,120)">&quo=
t;</span>, m_rfnoc_chdr_tready);</div><div>// XXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX=
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</div><div><br></div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// check sinks are asse=
rting TREADY</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"co=
lor:rgb(220,220,170)">$display</span>(<span style=3D"color:rgb(220,220,170)=
">$time</span>, <span style=3D"color:rgb(206,145,120)">&quot; m_rfnoc_chdr_=
tready=3D&#39;b</span><span style=3D"color:rgb(156,220,254)">%b</span><span=
 style=3D"color:rgb(206,145,120)">&quot;</span>, m_rfnoc_chdr_tready);</div=
><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)"=
>// model some back-pressure if needed</span></div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 blk_ctrl.<span style=3D"color:rgb(220,220,170)">set_slave_stall_=
prob</span>(<span style=3D"color:rgb(181,206,168)">0</span>, <span style=3D=
"color:rgb(181,206,168)">0</span>);</div><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 <span style=3D"color:rgb(106,153,85)">// Queue a packet for transfer</s=
pan></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(106,153=
,85)">// pkt_info =3D 0;</span></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span=
 style=3D"color:rgb(106,153,85)">// pkt_info.eob =3D 1;</span></div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// blk_ct=
rl.send_items(0, send_samples, , pkt_info);</span></div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 blk_ctrl.<span style=3D"color:rgb(220,220,170)">send_items</s=
pan>(<span style=3D"color:rgb(181,206,168)">0</span>, send_samples);</div><=
div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 blk_ctrl.<span style=3D"color:rgb(220,220,1=
70)">wait_complete</span>(<span style=3D"color:rgb(181,206,168)">0</span>);=
</div><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(220,220=
,170)">$display</span>(<span style=3D"color:rgb(220,220,170)">$time</span>,=
 <span style=3D"color:rgb(206,145,120)">&quot;Send complete&quot;</span>);<=
/div><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(220,220,=
170)">$display</span>(<span style=3D"color:rgb(220,220,170)">$time</span>, =
<span style=3D"color:rgb(206,145,120)">&quot; TX Size=3D&#39;</span><span s=
tyle=3D"color:rgb(156,220,254)">%d</span><span style=3D"color:rgb(206,145,1=
20)">&quot;</span>, send_samples.<span style=3D"color:rgb(220,220,170)">siz=
e</span>());</div><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color=
:rgb(106,153,85)">// Receive the output packet</span></div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 blk_ctrl.<span style=3D"color:rgb(220,220,170)">recv_item=
s</span>(<span style=3D"color:rgb(181,206,168)">0</span>, recv_samples);</d=
iv><br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85=
)">// Check the resulting payload size</span></div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 `ASSERT_ERROR(recv_samples.<span style=3D"color:rgb(220,220,170)=
">size</span>() =3D=3D SPP,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 <span style=3D"color:rgb(206,145,120)">&quot;Received payload didn&#=
39;t match size of payload sent&quot;</span>);</div><br><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 test.<span style=3D"color:rgb(220,220,170)">end_test</span>()=
;</div><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(197,134,192)">end</span>=
</div><br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">//------=
--------------------------</span></div><div>=C2=A0 =C2=A0 <span style=3D"co=
lor:rgb(106,153,85)">// Finish Up</span></div><div>=C2=A0 =C2=A0 <span styl=
e=3D"color:rgb(106,153,85)">//--------------------------------</span></div>=
<br><div>=C2=A0 =C2=A0 <span style=3D"color:rgb(106,153,85)">// Display fin=
al statistics and results</span></div><div>=C2=A0 =C2=A0 test.<span style=
=3D"color:rgb(220,220,170)">end_tb</span>();</div><div>=C2=A0 <span style=
=3D"color:rgb(197,134,192)">end</span> : tb_main</div><br><div><span style=
=3D"color:rgb(197,134,192)">endmodule</span> : rfnoc_block_multiddc_tb</div=
><br><br><div>`default_nettype <span style=3D"color:rgb(156,220,254)">wire<=
/span></div></div></div></div></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, 14 Sept 2022 at 12:30, Kevin Wi=
lliams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Rob, thanks for=
 that testbench advice.<div><br></div><div>My core will not provide output =
if it does not see TREADY on its master interfaces. (Which I have verified =
by simulating the core on its own.)</div><div><br></div><div>I have used th=
e rfnoc-example testbench for reference, and issue a &quot;blk_ctrl.send_it=
ems(0, send_samples)&quot;.</div><div><br></div><div>Monitoring the rfnoc s=
ignal &quot;m_rfnoc_chdr_tready&quot; in the testbench shows that it never =
transitions from zero&#39;s at the beginning of the simulation.</div><div><=
br></div><div>Should I see the BFM slave asserting these signals? (I cannot=
 drive them from my testbench - I get a warning about multiple drivers.)</d=
iv></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 13 Sept 2022 at 15:49, Rob Kossler &lt;<a href=3D"m=
ailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr">Have you tried to run an rfnoc-style testbench such as in th=
e rfnoc-example?=C2=A0 If not, this may be useful.=C2=A0 If you try this, i=
t may be easier to follow the example if you change your output number of p=
orts to be 1 so that it is a simple 1-to-1 block.<div>Rob</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep =
13, 2022 at 6:36 AM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" =
target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">Hi Rob,<div><br></div><div>I can confirm the rad=
io streams correctly.</div><div><br></div><div>I have also tried tx_streame=
r =3D&gt; multiDDC =3D&gt; rx_streamer which successfully sends a number of=
 samples, but none are received. (The script is below.)</div><div><br></div=
><div>Just to summarize, the IP core seems to be behaving correctly when si=
mulated in Vivado where I apply AXI handshaking, reset the core, and clock =
it.</div><div><br></div><div>I have set all endpoints in the design as foll=
ows:<br></div><div><div><br></div><div>=C2=A0 ep0:=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Stream endpoin=
t name</div><div>=C2=A0 =C2=A0 ctrl: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes control traffi=
c</div><div>=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic</div>=
<div>=C2=A0 =C2=A0 buff_size: 32768=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 # Ingress buffer size for data</div></div><div><br></div>=
<div>Regards, Kevin</div><div><br></div><div><br></div><div><div>graph =3D =
uhd.rfnoc.RfnocGraph(&quot;type=3Dx300,addr=3D192.168.30.2&quot;)</div><div=
><br></div><div>tx_streamer =3D graph.create_tx_streamer(1, uhd.usrp.Stream=
Args(&quot;sc16&quot;, &quot;sc16&quot;))</div><div>rx_streamer =3D graph.c=
reate_rx_streamer(1, uhd.usrp.StreamArgs(&quot;sc16&quot;, &quot;sc16&quot;=
))</div><div><br></div><div>gb =3D graph.get_block(&quot;0/multiddc#0&quot;=
)</div><div>graph.connect(tx_streamer, 0, gb.get_unique_id(), 0)<br></div><=
div>graph.connect(gb.get_unique_id(), 0, rx_streamer, 0)</div><div>graph.co=
mmit()</div><div><br></div><div>num_samps =3D 4 * tx_streamer.get_max_num_s=
amps()</div><div>send_samps =3D np.array([[0x40004000] * num_samps], dtype=
=3D&quot;int32&quot;)</div><div><br></div><div>tx_md =3D uhd.types.TXMetada=
ta()</div><div>tx_md.start_of_burst =3D True</div><div>tx_md.end_of_burst =
=3D True</div><div><br></div><div>recv_samps =3D np.zeros((1, num_samps), d=
type=3D&quot;int32&quot;)</div><div><br></div><div>rx_md =3D uhd.types.RXMe=
tadata()</div><div><br></div><div>num_sent =3D tx_streamer.send(send_samps,=
 uhd.types.TXMetadata())</div><div>num_recv =3D rx_streamer.recv(recv_samps=
, rx_md, 0.1)<br></div></div><div><br></div></div></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 13 Se=
pt 2022 at 00:36, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">One more thought. If the FPGA v=
ersion that you built with dynamic linking, you should be able to create an=
 RFNoC Graph as follows:<div>=C2=A0 tx_streamer =3D&gt; multiDDC =3D&gt; rx=
_streamer(s)</div><div>This way you can eliminate the radio from the equati=
on and test in a very similar fashion to the way it is tested in a testbenc=
h.</div><div><br></div><div>Rob</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 6:33 PM Rob Ko=
ssler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.=
edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Oops. Ignore what I said. I now realize you stated you =
were getting an Overflow which of course you would never get if streaming h=
adn&#39;t started.<div>Rob</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 6:32 PM Rob Kossler=
 &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Are you sure that the radio is even streaming?=C2=A0 The typ=
ical method for starting streaming is to tell the rx_streamer to start stre=
aming.=C2=A0 Then, in UHD-land, the rx_streamer ctrl tells the next upstrin=
g block to start streaming such that this streaming command propagates up t=
he chain until the radio receives it and starts streaming.=C2=A0 So, if you=
r custom block does not forward the streaming command from the rx_streamer =
to the radio, then the radio never even starts streaming.=C2=A0 You can ver=
ify by simply monitoring the LEDs.<div><br></div><div>If this is the proble=
m, you can go-around the intended use by simply telling the radio to start =
streaming rather than the rx_streamer.=C2=A0 Or, of course, you can modify =
your custom block controller to propagate the streaming command.<br><div>Ro=
b</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Sep 12, 2022 at 4:18 PM Kevin Williams &lt;<a href=3D"=
mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Yes, of course. But I don&#39;t get 1 sample from the ddc&#39;s, even with=
 just one channel of a 2:1 decimated channel connected to the rx streamer.<=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, 12 Sept 2022 at 22:13, Jonathon Pendlum &lt;<a href=3D"mailto:jonath=
on.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">The aggregate output rate of the 5 streams could require more band=
width than the 10 GigE interface can sustain. What are the exact output rat=
es?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, Sep 12, 2022 at 3:53 PM Kevin Williams &lt;<a href=3D"mailto:zs1=
kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Those rat=
es vary from a 2:1 decimation down to other rates.<div><br></div><div>The h=
ost has 10 Gbe interfaces to the USRP.</div><div><br></div><div>I get sampl=
es if i connect the radio to the rx streamer, just nothing from the ddc&#39=
;s.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, 12 Sept 2022 at 21:48, Jonathon Pendlum &lt;<a href=3D"mai=
lto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hi Kevin,<div><br></div><div>What are the sample rates fo=
r the 5 outputs? What connection are you using to your host PC, 1 GigE or 1=
0 GigE?</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 3:38=
 PM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank=
">zs1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<div><br></=
div><div>I&#39;ve got an x310. The flowgraph is a simple radio-&gt;multiddc=
-&gt;(to 5x outputs). I&#39;ve tried both static and dynamic routing from t=
he radio block. I.e. the static route version:</div><div><br></div><div><di=
v>|=C2=A0 =C2=A0 /</div><div>|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Stat=
ic connections on this device:</div><div>|=C2=A0 =C2=A0|</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/Radio#0:0=3D=3D&gt;0/multiddc#0:0</div><div>|=C2=A0=
 =C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:0=3D=3D&gt;0/SEP#2:0</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:1=3D=3D&gt;0/SEP#3:0</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:2=3D=3D&gt;0/SEP#4:0</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:3=3D=3D&gt;0/SEP#5:0</div><div>|=C2=A0 =
=C2=A0|=C2=A0 =C2=A0* 0/multiddc#0:4=3D=3D&gt;0/SEP#6:0</div></div><div><br=
></div><div><br></div><div>On the input side it is all at the radio rate, b=
ut I hope my core is being clocked at 214 MHz.</div><div><br></div><div>Whe=
n I simulate my IP core (which includes the AXI streaming interfaces) it lo=
oks ok.</div><div><br></div><div>Regards, Kevin</div></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Sept =
2022 at 21:29, Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettu=
s.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello K=
evin,<div><br></div><div>What device are you using and what does your flowg=
raph look like? What sample rate are you running at? If your block is runni=
ng at the radio sample rate (e.g. 200 MSPS on a X310), your block will need=
 to process one input sample every clock cycle on average.</div><div><br></=
div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams &lt;<=
a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs1kwa@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr">Hi All,<div><br></div><div>I&#39;ve got an IP core that is causing an &=
quot;ERROR_CODE_OVERFLOW&quot; when used in an RFNoC project.</div><div><br=
></div><div>The core responds correctly when simulated outside the RFNoC en=
vironment. (I can see correct output, the AXI streaming signalling, back-pr=
essure when required, etc.)</div><div><br></div><div>I&#39;m not sure how t=
o go about debugging this, and am not yet familiar enough with RFNoC to kno=
w what to ask.</div><div><br></div><div>I have been thinking it was the cor=
e not being reset or clocked correctly, but this is how it gets instantiate=
d:</div><div><br></div><div><div>=C2=A0 multiddc multiddc_i (</div><div>=C2=
=A0 =C2=A0 //=C2=A0 =C2=A0- Using different clocks for the IP core and the =
AXI interface. The IPCore_Clk and AXILite_ACLK must be=C2=A0<br></div><div>=
=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0synchronous and connected to the same c=
lock source. The IPCore_RESETN and AXILite_ARESETN must be=C2=A0</div><div>=
=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0connected to the same reset source. See=
 Synchronization of Global Reset Signal to IP Core Clock Domain.</div><div>=
=C2=A0 =C2=A0 .IPCORE_CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div><div><br></div><d=
iv>=C2=A0 =C2=A0 .AXI4_Lite_ACLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (=
axis_data_clk),</div><div>=C2=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(~axis_data_rst),</div></div><div><br></div><div>The core =
YAML file describes the clock as:</div><div><br></div><div><div>data:</div>=
<div>=C2=A0 fpga_iface: axis_chdr</div><div>=C2=A0 clk_domain: ce</div></di=
v><div><br></div><div>In the project YAML file:</div><div><br></div><div><d=
iv>clk_domains:</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: radi=
o, dstblk: radio0,=C2=A0 =C2=A0 dstport: radio }</div><div>=C2=A0 =C2=A0 - =
{ srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: multiddc0, dstport: c=
e }</div></div><div><br></div><div>Is there something that might be an obvi=
ous first place to check?</div><div><br></div><div>Many thanks, Kevin<br cl=
ear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">Kevin Williams</div></di=
v></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</blockquote></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>Kevin Williams</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b13aaf05e8a514fb--

--===============3387606614380004720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3387606614380004720==--
