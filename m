Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1E631DF25
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 19:37:09 +0100 (CET)
Received: from [::1] (port=36124 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCRhB-0005Yp-S5; Wed, 17 Feb 2021 13:37:05 -0500
Received: from postman.dtnt.info ([62.219.91.51]:55280)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1lCRh6-0005R6-P8
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 13:37:01 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id D3EB043981
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 20:36:00 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id A53009FB0E
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 20:36:00 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id oNppyoxNZNk3 for <usrp-users@lists.ettus.com>;
 Wed, 17 Feb 2021 20:35:56 +0200 (IST)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by o.dtnt.email (Postfix) with ESMTPSA id 242B59F94A
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 20:35:54 +0200 (IST)
Received: by mail-oi1-f180.google.com with SMTP id j5so3777370oie.1
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 10:35:54 -0800 (PST)
X-Gm-Message-State: AOAM532m2Fw6ic6Pc2MPTi4cjxfaqYfk0sZmcegyvk3/Q+OyNuPf2oDp
 E1w9VjLK1XrrZWbyLIMNWD/Iqva1CDf267qOTZY=
X-Google-Smtp-Source: ABdhPJz1GaY8RHTwlY06IEYFFWpK5JpHh85Jw4c9MDjdjfyKWj4A8RrB++0zgVSVjKwtKcrTzd8dx/PqtuMtFbxMAt4=
X-Received: by 2002:a05:6808:d46:: with SMTP id w6mr116212oik.47.1613586952291; 
 Wed, 17 Feb 2021 10:35:52 -0800 (PST)
MIME-Version: 1.0
References: <mailman.38.1613581204.16377.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.38.1613581204.16377.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Wed, 17 Feb 2021 20:35:23 +0200
X-Gmail-Original-Message-ID: <CACDReSw9zcq82NYRF03pR3nP5F2JrG8YHDVSAxUu0aEccGj+0Q@mail.gmail.com>
Message-ID: <CACDReSw9zcq82NYRF03pR3nP5F2JrG8YHDVSAxUu0aEccGj+0Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: D3EB043981.A8180
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: Re: [USRP-users] Getting sensor data using device3 usrp on E310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============0709792741537790691=="
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

--===============0709792741537790691==
Content-Type: multipart/related; boundary="0000000000001b239d05bb8c7d82"

--0000000000001b239d05bb8c7d82
Content-Type: multipart/alternative; boundary="0000000000001b239c05bb8c7d81"

--0000000000001b239c05bb8c7d81
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Rob and Marcus,

Thank you very much.
It is amazing how much I still don't know.
Rob, special thanks for catching that I am indeed working with 3.15 and not
4.0 (while reading the help on the web for 4.0).

Regards,
Ofer Saferman

On Wed, Feb 17, 2021 at 7:00 PM <usrp-users-request@lists.ettus.com> wrote:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> or, via email, send a message with subject or body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
> Today's Topics:
>
>    1. Re: Getting sensor data using device3 usrp on E310 (Marcus M?ller)
>    2. Re: Getting sensor data using device3 usrp on E310 (Rob Kossler)
>    3. Error when "sudo make install" RFNoC Block (Tuan Hoang Dinh)
>    4. User register on X300 UHD 3.9 (C?dric Hannotier)
>    5. Re: rfnoc_image_builder error with clock domain (Aaron Rossetto)
>    6. Re: Error when "sudo make install" RFNoC Block (Rob Kossler)
>    7. OTT Gain Block stopping samples flowing from RFNoC Digital
>       Down Converter (Mark D)
>    8. Re: Error when "sudo make install" RFNoC Block (Tuan Hoang Dinh)
>    9. Re: OTT Gain Block stopping samples flowing from RFNoC
>       Digital Down Converter (Jim Palladino)
>   10. Re: OTT Gain Block stopping samples flowing from RFNoC
>       Digital Down Converter (Mark D)
>
>
>
> ---------- Forwarded message ----------
> From: "Marcus M=C3=BCller" <marcus.mueller@ettus.com>
> To: usrp-users@lists.ettus.com
> Cc:
> Bcc:
> Date: Tue, 16 Feb 2021 21:15:21 +0100
> Subject: Re: [USRP-users] Getting sensor data using device3 usrp on E310
> Dear Ofer,
>
> You're right, the get_mboard_sensor is a property of the multi_usrp class
> and logically
> doesn't "map" to the device3 class.
>
> I don't have an ultimately good solution, here, to be honest. As a ugly
> yet functional
> workaround:
>
>     auto sensor_values =3D
> my_device3_sptr->get_tree()->access<uhd::sensor_value_t>(path).get();
>
> where "path" is the path to your sensor value. To find that, try
> `uhd_usrp_probe --tree |
> grep sensors`.
>
> Best regards,
>
> Marcus
>
> DISCLAIMER: Any attached Code is provided As Is. It has not been tested or
> validated as a product, for use in a deployed application or system, or f=
or
> use in hazardous environments. You assume all risks for use of the Code.
> Use of the Code is subject to terms of the licenses to the UHD or RFNoC
> code with which the Code is used. Standard licenses to UHD and RFNoC can =
be
> found at https://www.ettus.com/sdr-software/licenses/.
>
> NI will only perform services based on its understanding and condition
> that the goods or services (i) are not for the use in the production or
> development of any item produced, purchased, or ordered by any entity with
> a footnote 1 designation in the license requirement column of Supplement
> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
> company is not a party to the transaction.  If our understanding is
> incorrect, please notify us immediately because a specific authorization
> may be required from the U.S. Commerce Department before the transaction
> may proceed further.
>
> On 16.02.21 08:33, Ofer Saferman via USRP-users wrote:
> > Hello,
> >
> > I would like to access sensor data like "gps_time",
> "ref_locked","gps_locked" using a
> > USRP device defined as "uhd::device3::sptr usrp" on a E310 unit.
> > All the examples are for USRP devices defined as
> "uhd::usrp::multi_usrp::sptr usrp".
> >
> > I searched the documentation and tried all possible combinations also
> using the
> > "uhd::rfnoc::radio_ctrl::sptr" object without any success.
> > I can see the method exists for multi_usrp and mb_controller objects. I
> know that the
> > mb_controller is somewhere accessible either through radio_ctrl object
> or the device3
> > object but I don't know how to get to it.
> >
> > Regards,
> > Ofer Saferman
> >
> > --
> > This message has been scanned for viruses and
> > dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
> is
> > believed to be clean.
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
>
>
> ---------- Forwarded message ----------
> From: Rob Kossler <rkossler@nd.edu>
> To: "Marcus M=C3=BCller" <marcus.mueller@ettus.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Bcc:
> Date: Tue, 16 Feb 2021 18:39:23 -0500
> Subject: Re: [USRP-users] Getting sensor data using device3 usrp on E310
> Hi Ofer,
> The mb_controller class is a UHD 4.0 addition.  Are you using UHD 4.0 or
> 3.15?  If using UHD 4.0 you can get access to the mb_controller through t=
he
> get_mb_controller() function of any rfnoc block or the graph.  If using U=
HD
> 3.15, you likely need to access via the tree as Marcus said. I see that in
> my 3.15 code, I had the following function.
>
> uhd::sensor_value_t get_mboard_sensor(const std::string &name, size_t
> mboard) override
> {
> return _tree->access<uhd::sensor_value_t>(mb_root(mboard) / "sensors" /
> name).get();
> }
>
> On Tue, Feb 16, 2021 at 3:16 PM Marcus M=C3=BCller via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Dear Ofer,
>>
>> You're right, the get_mboard_sensor is a property of the multi_usrp class
>> and logically
>> doesn't "map" to the device3 class.
>>
>> I don't have an ultimately good solution, here, to be honest. As a ugly
>> yet functional
>> workaround:
>>
>>     auto sensor_values =3D
>> my_device3_sptr->get_tree()->access<uhd::sensor_value_t>(path).get();
>>
>> where "path" is the path to your sensor value. To find that, try
>> `uhd_usrp_probe --tree |
>> grep sensors`.
>>
>> Best regards,
>>
>> Marcus
>>
>> DISCLAIMER: Any attached Code is provided As Is. It has not been tested
>> or validated as a product, for use in a deployed application or system, =
or
>> for use in hazardous environments. You assume all risks for use of the
>> Code. Use of the Code is subject to terms of the licenses to the UHD or
>> RFNoC code with which the Code is used. Standard licenses to UHD and RFN=
oC
>> can be found at https://www.ettus.com/sdr-software/licenses/.
>>
>> NI will only perform services based on its understanding and condition
>> that the goods or services (i) are not for the use in the production or
>> development of any item produced, purchased, or ordered by any entity wi=
th
>> a footnote 1 designation in the license requirement column of Supplement
>> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
>> company is not a party to the transaction.  If our understanding is
>> incorrect, please notify us immediately because a specific authorization
>> may be required from the U.S. Commerce Department before the transaction
>> may proceed further.
>>
>> On 16.02.21 08:33, Ofer Saferman via USRP-users wrote:
>> > Hello,
>> >
>> > I would like to access sensor data like "gps_time",
>> "ref_locked","gps_locked" using a
>> > USRP device defined as "uhd::device3::sptr usrp" on a E310 unit.
>> > All the examples are for USRP devices defined as
>> "uhd::usrp::multi_usrp::sptr usrp".
>> >
>> > I searched the documentation and tried all possible combinations also
>> using the
>> > "uhd::rfnoc::radio_ctrl::sptr" object without any success.
>> > I can see the method exists for multi_usrp and mb_controller objects. I
>> know that the
>> > mb_controller is somewhere accessible either through radio_ctrl object
>> or the device3
>> > object but I don't know how to get to it.
>> >
>> > Regards,
>> > Ofer Saferman
>> >
>> > --
>> > This message has been scanned for viruses and
>> > dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> > believed to be clean.
>> >
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
>
> ---------- Forwarded message ----------
> From: Tuan Hoang Dinh <tuanmcx58@gmail.com>
> To: usrp-users <usrp-users@lists.ettus.com>
> Cc:
> Bcc:
> Date: Wed, 17 Feb 2021 20:05:18 +0900
> Subject: [USRP-users] Error when "sudo make install" RFNoC Block
> Hi,
> I'm developing a RFNoC block, all the source files of user logic have been
> placed in ../rfnoc/fpga/rfnoc_block_* folder, I also modified the
> Makefile.srcs and listed all the needed files to synthesize the block. (T=
he
> Makefile.srsc attached below)
> The *"cmake ../"* and *"make testbench"* commands have been done without
> any problems.
> But finally, I run *"sudo make install"* and the error appeared as below:
>
> [image: image.png]
>
> I think the errors come from my Makefile.srcs, but I tried to modify the
> source file list into many formats but it still happens. I don't know why
> the Makefile.srsc worked well in the testbench process but makes the error
> here.
> Could anyone help me with my problem?
>
> Thank you!
>
> Best regards,
> Tuan
>
>
>
>
> ---------- Forwarded message ----------
> From: "C=C3=A9dric Hannotier" <cedric.hannotier@ulb.be>
> To: usrp-users@lists.ettus.com
> Cc:
> Bcc:
> Date: Wed, 17 Feb 2021 12:06:02 +0100
> Subject: [USRP-users] User register on X300 UHD 3.9
> Dear all,
>
> On USRP2, there was a concept of user registers,
> i.e. memory allocated in FPGA for the user, using user_settings,
> that the user can set in C++, using the UHD C++ API set_user_register.
>
> I am trying to reproduce such behaviour on X300 using UHD 3.9 LTS (i.e
> pre-RFNOC).
> I am solely interested in setting registers in custom FPGA logic
> dynamically using C++.
>
> Does anyone know how to do it?
>
> Best regards
> --
>
> C=C3=A9dric Hannotier
>
>
>
>
>
> ---------- Forwarded message ----------
> From: Aaron Rossetto <aaron.rossetto@ettus.com>
> To: usrp-users <usrp-users@lists.ettus.com>
> Cc:
> Bcc:
> Date: Wed, 17 Feb 2021 07:53:09 -0600
> Subject: Re: [USRP-users] rfnoc_image_builder error with clock domain
> On Tue, Feb 16, 2021 at 10:15 AM Mike via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>
>> Any ideas?
>
>
> Try changing the clock domain connection to your FFT block to this:
>   - { srcblk: _device_, srcport: rfnoc_chdr,    dstblk: fft0,   dstport:ce
> }
>
> Does that allow rfnoc_image_builder to complete successfully?
>
> Best regards,
> Aaron
>
>
>
> ---------- Forwarded message ----------
> From: Rob Kossler <rkossler@nd.edu>
> To: Tuan Hoang Dinh <tuanmcx58@gmail.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Bcc:
> Date: Wed, 17 Feb 2021 09:49:29 -0500
> Subject: Re: [USRP-users] Error when "sudo make install" RFNoC Block
> There is a regular expression in the RFNOC_REGISTER_BLOCK_DIR macro from
> the main CMakeLists.txt that searches your Makefile.srcs in order to
> identify your source files.  The regex is "[a-z_]+\\.v", which has multip=
le
> problems, including that it doesn't account if you have commented out lin=
es
> in your Makefile.srcs and doesn't allow lots of normally allowable
> filenames.  Perhaps it doesn't even allow uppercase letters (depending on
> if the regex evaluator is case insensitive) which might be the issue in
> your case (note the error message for the missing file "ine_block.v" which
> looks like it's missing it's first character).
> Rob
>
> On Wed, Feb 17, 2021 at 6:06 AM Tuan Hoang Dinh via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I'm developing a RFNoC block, all the source files of user logic have
>> been placed in ../rfnoc/fpga/rfnoc_block_* folder, I also modified the
>> Makefile.srcs and listed all the needed files to synthesize the block. (=
The
>> Makefile.srsc attached below)
>> The *"cmake ../"* and *"make testbench"* commands have been done without
>> any problems.
>> But finally, I run *"sudo make install"* and the error appeared as below:
>>
>> [image: image.png]
>>
>> I think the errors come from my Makefile.srcs, but I tried to modify the
>> source file list into many formats but it still happens. I don't know why
>> the Makefile.srsc worked well in the testbench process but makes the err=
or
>> here.
>> Could anyone help me with my problem?
>>
>> Thank you!
>>
>> Best regards,
>> Tuan
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
>
> ---------- Forwarded message ----------
> From: Mark D <md964@hmgcc.gov.uk>
> To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
> Cc:
> Bcc:
> Date: Wed, 17 Feb 2021 15:35:09 +0000
> Subject: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
> Digital Down Converter
>
> I=E2=80=99m working with an E320 using UHD 4.0.
>
>
>
> I=E2=80=99ve been working through the video =E2=80=9DRFNoC 4 Workshop - G=
RCon 2020=E2=80=9D to
> install my own custom signal processing block into the RFNoC on the FPGA.
>
>
>
> I=E2=80=99ve also been following the guide AN-121 =E2=80=9CDebugging FPGA=
 images=E2=80=9D and have
> added Chip Scope probes to the payload and context stream signals.
>
>
>
> I have got to the point where I have the block instantiated in the FPGA.
> Running the example GNU radio code that streams samples from the host
> computer through the gain block and pack to the PC works as expected. I am
> also able to capture the payload and context stream signals in Chip Scope.
>
>
>
> However if I reconfigure the GNU radio to =E2=80=9CRFNoC RX Radio=E2=80=
=9D->=E2=80=9DRFNoC Digital
> Down Converter=E2=80=9D->=E2=80=9DRFNoC Gain=E2=80=9D->=E2=80=9DRFNoC Rx =
Streamer=E2=80=9D->=E2=80=9DQT GUI Time Sink=E2=80=9D the
> system no longer works.
>
>
>
> The Time Sink appears but the GNU Radio console is saying
> rfnoc_rx_streamer0 =E2=80=93 UHD.recv() call timed out. Removing the gain=
 block
> from the GNU radio design restores operation, so it appears that the gain
> block is in some way blocking the streaming data.
>
>
>
> I=E2=80=99ve also rebuilt the FPGA with the gain block connected between =
the DDC
> and Stream Endpoint but the results are the same. I=E2=80=99ve tried reve=
rting the
> gain block code back to that generated rfnocmodtool, which just loops the
> context and payload data straight through.
>
>
>
> Does anybody have any idea why this block would be stopping data
> internally generated within the USRP from streaming out, whereas it works
> Ok when data is flowing from and back to the host?
>
>
>
> Any help would be greatly appreciated,
>
>
>
> Mark
> ------------------------------
> This email and any files transmitted with it are confidential and intended
> solely for the use of the individual or entity to whom they are addressed.
> If you have received this email in error please notify the system manager.
>
>
>
> ---------- Forwarded message ----------
> From: Tuan Hoang Dinh <tuanmcx58@gmail.com>
> To: Rob Kossler <rkossler@nd.edu>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Bcc:
> Date: Thu, 18 Feb 2021 00:44:55 +0900
> Subject: Re: [USRP-users] Error when "sudo make install" RFNoC Block
> Hi Rob,
>
> Thank you for spending time help me with my problem.
> Let me try to rename my files and "sudo make install" again, I will tell
> you the result soon.
>
> Best regards,
> Tuan
>
> V=C3=A0o Th 4, 17 thg 2, 2021 va=CC=80o lu=CC=81c 23:49 Rob Kossler <rkos=
sler@nd.edu> =C4=91=C3=A3
> vi=E1=BA=BFt:
>
>> There is a regular expression in the RFNOC_REGISTER_BLOCK_DIR macro from
>> the main CMakeLists.txt that searches your Makefile.srcs in order to
>> identify your source files.  The regex is "[a-z_]+\\.v", which has multi=
ple
>> problems, including that it doesn't account if you have commented out li=
nes
>> in your Makefile.srcs and doesn't allow lots of normally allowable
>> filenames.  Perhaps it doesn't even allow uppercase letters (depending on
>> if the regex evaluator is case insensitive) which might be the issue in
>> your case (note the error message for the missing file "ine_block.v" whi=
ch
>> looks like it's missing it's first character).
>> Rob
>>
>> On Wed, Feb 17, 2021 at 6:06 AM Tuan Hoang Dinh via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> I'm developing a RFNoC block, all the source files of user logic have
>>> been placed in ../rfnoc/fpga/rfnoc_block_* folder, I also modified the
>>> Makefile.srcs and listed all the needed files to synthesize the block. =
(The
>>> Makefile.srsc attached below)
>>> The *"cmake ../"* and *"make testbench"* commands have been done
>>> without any problems.
>>> But finally, I run *"sudo make install"* and the error appeared as
>>> below:
>>>
>>> [image: image.png]
>>>
>>> I think the errors come from my Makefile.srcs, but I tried to modify the
>>> source file list into many formats but it still happens. I don't know w=
hy
>>> the Makefile.srsc worked well in the testbench process but makes the er=
ror
>>> here.
>>> Could anyone help me with my problem?
>>>
>>> Thank you!
>>>
>>> Best regards,
>>> Tuan
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
>
> ---------- Forwarded message ----------
> From: Jim Palladino <jim@gardettoengineering.com>
> To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>, Mark D <
> md964@hmgcc.gov.uk>
> Cc:
> Bcc:
> Date: Wed, 17 Feb 2021 15:52:22 +0000
> Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from
> RFNoC Digital Down Converter
> Hi Mark,
>
> I'm not sure if this is your problem, but I had a similar issue. After
> some debugging, I found that for some reason, with the OOT RFNoC Block
> inserted, the total size of the CHDR packet plus the Ethernet header that
> gets added on in the FPGA would slightly exceed the MTU size (mine was set
> to mtu=3D8000 for the E320). I never figured out why this happens, since =
this
> isn't the case if the OOT block is not inserted (just like the flowgraph
> you described). Maybe just increasing the MTU size would help?
>
> Anyhow, my solution was just to set the "spp" argument in the
> RFNoC_RX_Radio. I found that setting spp to a maximum of 1987 keeps the
> total packet size (after the Ethernet header is appended) to be less than
> the MTU of 8000. FYI, for spp means 1987 samples per packet. So, for 32-b=
it
> samples, 1987*4=3D7948. This leaves enough room for the Ethernet header.
>
> It seems like there should be a better "fix", but you can try setting spp
> manually to see if that helps.
>
> Jim
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Mark
> D via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, February 17, 2021 10:35 AM
> *To:* 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] OTT Gain Block stopping samples flowing from
> RFNoC Digital Down Converter
>
>
> I=E2=80=99m working with an E320 using UHD 4.0.
>
>
>
> I=E2=80=99ve been working through the video =E2=80=9DRFNoC 4 Workshop - G=
RCon 2020=E2=80=9D to
> install my own custom signal processing block into the RFNoC on the FPGA.
>
>
>
> I=E2=80=99ve also been following the guide AN-121 =E2=80=9CDebugging FPGA=
 images=E2=80=9D and have
> added Chip Scope probes to the payload and context stream signals.
>
>
>
> I have got to the point where I have the block instantiated in the FPGA.
> Running the example GNU radio code that streams samples from the host
> computer through the gain block and pack to the PC works as expected. I am
> also able to capture the payload and context stream signals in Chip Scope.
>
>
>
> However if I reconfigure the GNU radio to =E2=80=9CRFNoC RX Radio=E2=80=
=9D->=E2=80=9DRFNoC Digital
> Down Converter=E2=80=9D->=E2=80=9DRFNoC Gain=E2=80=9D->=E2=80=9DRFNoC Rx =
Streamer=E2=80=9D->=E2=80=9DQT GUI Time Sink=E2=80=9D the
> system no longer works.
>
>
>
> The Time Sink appears but the GNU Radio console is saying
> rfnoc_rx_streamer0 =E2=80=93 UHD.recv() call timed out. Removing the gain=
 block
> from the GNU radio design restores operation, so it appears that the gain
> block is in some way blocking the streaming data.
>
>
>
> I=E2=80=99ve also rebuilt the FPGA with the gain block connected between =
the DDC
> and Stream Endpoint but the results are the same. I=E2=80=99ve tried reve=
rting the
> gain block code back to that generated rfnocmodtool, which just loops the
> context and payload data straight through.
>
>
>
> Does anybody have any idea why this block would be stopping data
> internally generated within the USRP from streaming out, whereas it works
> Ok when data is flowing from and back to the host?
>
>
>
> Any help would be greatly appreciated,
>
>
>
> Mark
> ------------------------------
> This email and any files transmitted with it are confidential and intended
> solely for the use of the individual or entity to whom they are addressed.
> If you have received this email in error please notify the system manager.
>
>
>
> ---------- Forwarded message ----------
> From: Mark D <md964@hmgcc.gov.uk>
> To: "'Jim Palladino'" <jim@gardettoengineering.com>
> Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
> Bcc:
> Date: Wed, 17 Feb 2021 16:43:19 +0000
> Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from
> RFNoC Digital Down Converter
>
> Thanks Jim,
>
>
>
> I=E2=80=99m using eth0 on the E320 which is set with an MTU of 1500 and t=
his seems
> to be the maximum. If I try to set it to 1501 it says that=E2=80=99s grea=
ter than
> the maximum allowed.
>
>
>
> I=E2=80=99ve now switched to using the SFP+ port rather than eth0 which h=
as an MTU
> of 9000, but this hasn=E2=80=99t had any effect.
>
>
>
> I tried setting spp by adding spp=3D1987 to the Block Args field in GNU
> Radio, but still no luck. Is this the correct way to set the spp argument?
>
>
>
> Mark
>
>
>
> *From:* Jim Palladino <jim@gardettoengineering.com>
> *Sent:* 17 February 2021 15:52
> *To:* 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>; Mark D <
> md964@hmgcc.gov.uk>
> *Subject:* Re: OTT Gain Block stopping samples flowing from RFNoC Digital
> Down Converter
>
>
>
> Hi Mark,
>
>
>
> I'm not sure if this is your problem, but I had a similar issue. After
> some debugging, I found that for some reason, with the OOT RFNoC Block
> inserted, the total size of the CHDR packet plus the Ethernet header that
> gets added on in the FPGA would slightly exceed the MTU size (mine was set
> to mtu=3D8000 for the E320). I never figured out why this happens, since =
this
> isn't the case if the OOT block is not inserted (just like the flowgraph
> you described). Maybe just increasing the MTU size would help?
>
>
>
> Anyhow, my solution was just to set the "spp" argument in the
> RFNoC_RX_Radio. I found that setting spp to a maximum of 1987 keeps the
> total packet size (after the Ethernet header is appended) to be less than
> the MTU of 8000. FYI, for spp means 1987 samples per packet. So, for 32-b=
it
> samples, 1987*4=3D7948. This leaves enough room for the Ethernet header.
>
>
>
> It seems like there should be a better "fix", but you can try setting spp
> manually to see if that helps.
>
>
>
> Jim
>
>
> ------------------------------
>
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Mark
> D via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, February 17, 2021 10:35 AM
> *To:* 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] OTT Gain Block stopping samples flowing from
> RFNoC Digital Down Converter
>
>
>
> I=E2=80=99m working with an E320 using UHD 4.0.
>
>
>
> I=E2=80=99ve been working through the video =E2=80=9DRFNoC 4 Workshop - G=
RCon 2020=E2=80=9D to
> install my own custom signal processing block into the RFNoC on the FPGA.
>
>
>
> I=E2=80=99ve also been following the guide AN-121 =E2=80=9CDebugging FPGA=
 images=E2=80=9D and have
> added Chip Scope probes to the payload and context stream signals.
>
>
>
> I have got to the point where I have the block instantiated in the FPGA.
> Running the example GNU radio code that streams samples from the host
> computer through the gain block and pack to the PC works as expected. I am
> also able to capture the payload and context stream signals in Chip Scope.
>
>
>
> However if I reconfigure the GNU radio to =E2=80=9CRFNoC RX Radio=E2=80=
=9D->=E2=80=9DRFNoC Digital
> Down Converter=E2=80=9D->=E2=80=9DRFNoC Gain=E2=80=9D->=E2=80=9DRFNoC Rx =
Streamer=E2=80=9D->=E2=80=9DQT GUI Time Sink=E2=80=9D the
> system no longer works.
>
>
>
> The Time Sink appears but the GNU Radio console is saying
> rfnoc_rx_streamer0 =E2=80=93 UHD.recv() call timed out. Removing the gain=
 block
> from the GNU radio design restores operation, so it appears that the gain
> block is in some way blocking the streaming data.
>
>
>
> I=E2=80=99ve also rebuilt the FPGA with the gain block connected between =
the DDC
> and Stream Endpoint but the results are the same. I=E2=80=99ve tried reve=
rting the
> gain block code back to that generated rfnocmodtool, which just loops the
> context and payload data straight through.
>
>
>
> Does anybody have any idea why this block would be stopping data
> internally generated within the USRP from streaming out, whereas it works
> Ok when data is flowing from and back to the host?
>
>
>
> Any help would be greatly appreciated,
>
>
>
> Mark
> ------------------------------
>
> This email and any files transmitted with it are confidential and intended
> solely for the use of the individual or entity to whom they are addressed.
> If you have received this email in error please notify the system manager.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--=20
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000001b239c05bb8c7d81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Rob and Marcus,</div><div><br></div><div>Thank =
you very much.</div><div>It is amazing how much I still don&#39;t know.</di=
v><div>Rob, special thanks for catching that I am indeed working with 3.15 =
and not 4.0 (while reading the help on the web for 4.0).</div><div><br></di=
v><div>Regards,</div><div>Ofer Saferman<br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 17, 2021 at 7:00 PM =
&lt;<a href=3D"mailto:usrp-users-request@lists.ettus.com">usrp-users-reques=
t@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Send USRP-users mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: Getting sensor data using device3 usrp on E310 (Marcus =
M?ller)<br>
=C2=A0 =C2=A02. Re: Getting sensor data using device3 usrp on E310 (Rob Kos=
sler)<br>
=C2=A0 =C2=A03. Error when &quot;sudo make install&quot; RFNoC Block (Tuan =
Hoang Dinh)<br>
=C2=A0 =C2=A04. User register on X300 UHD 3.9 (C?dric Hannotier)<br>
=C2=A0 =C2=A05. Re: rfnoc_image_builder error with clock domain (Aaron Ross=
etto)<br>
=C2=A0 =C2=A06. Re: Error when &quot;sudo make install&quot; RFNoC Block (R=
ob Kossler)<br>
=C2=A0 =C2=A07. OTT Gain Block stopping samples flowing from RFNoC Digital<=
br>
=C2=A0 =C2=A0 =C2=A0 Down Converter (Mark D)<br>
=C2=A0 =C2=A08. Re: Error when &quot;sudo make install&quot; RFNoC Block (T=
uan Hoang Dinh)<br>
=C2=A0 =C2=A09. Re: OTT Gain Block stopping samples flowing from RFNoC<br>
=C2=A0 =C2=A0 =C2=A0 Digital Down Converter (Jim Palladino)<br>
=C2=A0 10. Re: OTT Gain Block stopping samples flowing from RFNoC<br>
=C2=A0 =C2=A0 =C2=A0 Digital Down Converter (Mark D)<br>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0&quot;Mar=
cus M=C3=BCller&quot; &lt;<a href=3D"mailto:marcus.mueller@ettus.com" targe=
t=3D"_blank">marcus.mueller@ettus.com</a>&gt;<br>To:=C2=A0<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a><br>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Tue, 16 Feb 2021 21:15:21 +0100=
<br>Subject:=C2=A0Re: [USRP-users] Getting sensor data using device3 usrp o=
n E310<br>Dear Ofer,<br>
<br>
You&#39;re right, the get_mboard_sensor is a property of the multi_usrp cla=
ss and logically<br>
doesn&#39;t &quot;map&quot; to the device3 class.<br>
<br>
I don&#39;t have an ultimately good solution, here, to be honest. As a ugly=
 yet functional<br>
workaround:<br>
<br>
=C2=A0=C2=A0=C2=A0 auto sensor_values =3D my_device3_sptr-&gt;get_tree()-&g=
t;access&lt;uhd::sensor_value_t&gt;(path).get();<br>
<br>
where &quot;path&quot; is the path to your sensor value. To find that, try =
`uhd_usrp_probe --tree |<br>
grep sensors`.<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at <a href=3D"https://www.ettus.com/sdr-software/licenses/" rel=3D"noref=
errer" target=3D"_blank">https://www.ettus.com/sdr-software/licenses/</a>.<=
br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.<br>
<br>
On 16.02.21 08:33, Ofer Saferman via USRP-users wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I would like to access sensor data like &quot;gps_time&quot;, &quot;re=
f_locked&quot;,&quot;gps_locked&quot; using a<br>
&gt; USRP device defined as &quot;uhd::device3::sptr usrp&quot; on a E310 u=
nit.<br>
&gt; All the examples are for USRP devices defined as &quot;uhd::usrp::mult=
i_usrp::sptr usrp&quot;.<br>
&gt;<br>
&gt; I searched the documentation and tried all possible combinations also =
using the<br>
&gt; &quot;uhd::rfnoc::radio_ctrl::sptr&quot; object without any success.<b=
r>
&gt; I can see the method exists for multi_usrp and mb_controller objects. =
I know that the<br>
&gt; mb_controller is somewhere accessible either through radio_ctrl object=
 or the device3<br>
&gt; object but I don&#39;t know how to get to it.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Ofer Saferman<br>
&gt;<br>
&gt; -- <br>
&gt; This message has been scanned for viruses and<br>
&gt; dangerous content by *MailScanner* &lt;<a href=3D"http://www.mailscann=
er.info/" rel=3D"noreferrer" target=3D"_blank">http://www.mailscanner.info/=
</a>&gt;, and is<br>
&gt; believed to be clean.<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Rob Kossl=
er &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu=
</a>&gt;<br>To:=C2=A0&quot;Marcus M=C3=BCller&quot; &lt;<a href=3D"mailto:m=
arcus.mueller@ettus.com" target=3D"_blank">marcus.mueller@ettus.com</a>&gt;=
<br>Cc:=C2=A0usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>Bcc:=C2=A0<br>Date:=
=C2=A0Tue, 16 Feb 2021 18:39:23 -0500<br>Subject:=C2=A0Re: [USRP-users] Get=
ting sensor data using device3 usrp on E310<br><div dir=3D"ltr"><div dir=3D=
"ltr">Hi Ofer,<div>The mb_controller class is a UHD 4.0 addition.=C2=A0 Are=
 you using UHD 4.0 or 3.15?=C2=A0 If using UHD 4.0 you can get access to th=
e mb_controller through the get_mb_controller() function of any rfnoc block=
 or the graph.=C2=A0 If using UHD 3.15, you likely need to access via the t=
ree as Marcus said. I see that in my 3.15 code, I had the following functio=
n.</div><div><br></div><div><div style=3D"color:rgb(0,0,0);background-color=
:rgb(255,255,254);font-family:SFMono-Medium,&quot;SF Mono&quot;,&quot;Segoe=
 UI Mono&quot;,&quot;Roboto Mono&quot;,&quot;Ubuntu Mono&quot;,Menlo,monosp=
ace;font-size:13px;line-height:18px;white-space:pre-wrap"><div>    <span st=
yle=3D"color:rgb(32,32,32)">uhd</span>::<span style=3D"color:rgb(32,32,32)"=
>sensor_value_t</span> <span style=3D"color:rgb(32,32,32)">get_mboard_senso=
r</span>(<span style=3D"color:rgb(9,30,66);font-weight:bold">const</span> <=
span style=3D"color:rgb(32,32,32)">std</span>::<span style=3D"color:rgb(32,=
32,32)">string</span> &amp;<span style=3D"color:rgb(32,32,32)">name</span>,=
 <span style=3D"color:rgb(32,32,32)">size_t</span> <span style=3D"color:rgb=
(32,32,32)">mboard</span>) <span style=3D"color:rgb(9,30,66);font-weight:bo=
ld">override</span></div><div>    {</div><div>        <span style=3D"color:=
rgb(9,30,66);font-weight:bold">return</span> <span style=3D"color:rgb(32,32=
,32)">_tree</span>-&gt;<span style=3D"color:rgb(32,32,32)">access</span>&lt=
;<span style=3D"color:rgb(32,32,32)">uhd</span>::<span style=3D"color:rgb(3=
2,32,32)">sensor_value_t</span>&gt;(<span style=3D"color:rgb(32,32,32)">mb_=
root</span>(<span style=3D"color:rgb(32,32,32)">mboard</span>) / <span styl=
e=3D"color:rgb(191,38,0)">&quot;sensors&quot;</span> / <span style=3D"color=
:rgb(32,32,32)">name</span>).<span style=3D"color:rgb(32,32,32)">get</span>=
();</div><div>    }</div></div></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 16, 2021 at 3:16 PM Marcus=
 M=C3=BCller via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Dear Ofer,<br>
<br>
You&#39;re right, the get_mboard_sensor is a property of the multi_usrp cla=
ss and logically<br>
doesn&#39;t &quot;map&quot; to the device3 class.<br>
<br>
I don&#39;t have an ultimately good solution, here, to be honest. As a ugly=
 yet functional<br>
workaround:<br>
<br>
=C2=A0=C2=A0=C2=A0 auto sensor_values =3D my_device3_sptr-&gt;get_tree()-&g=
t;access&lt;uhd::sensor_value_t&gt;(path).get();<br>
<br>
where &quot;path&quot; is the path to your sensor value. To find that, try =
`uhd_usrp_probe --tree |<br>
grep sensors`.<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at <a href=3D"https://www.ettus.com/sdr-software/licenses/" rel=3D"noref=
errer" target=3D"_blank">https://www.ettus.com/sdr-software/licenses/</a>.<=
br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.<br>
<br>
On 16.02.21 08:33, Ofer Saferman via USRP-users wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I would like to access sensor data like &quot;gps_time&quot;, &quot;re=
f_locked&quot;,&quot;gps_locked&quot; using a<br>
&gt; USRP device defined as &quot;uhd::device3::sptr usrp&quot; on a E310 u=
nit.<br>
&gt; All the examples are for USRP devices defined as &quot;uhd::usrp::mult=
i_usrp::sptr usrp&quot;.<br>
&gt;<br>
&gt; I searched the documentation and tried all possible combinations also =
using the<br>
&gt; &quot;uhd::rfnoc::radio_ctrl::sptr&quot; object without any success.<b=
r>
&gt; I can see the method exists for multi_usrp and mb_controller objects. =
I know that the<br>
&gt; mb_controller is somewhere accessible either through radio_ctrl object=
 or the device3<br>
&gt; object but I don&#39;t know how to get to it.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Ofer Saferman<br>
&gt;<br>
&gt; -- <br>
&gt; This message has been scanned for viruses and<br>
&gt; dangerous content by *MailScanner* &lt;<a href=3D"http://www.mailscann=
er.info/" rel=3D"noreferrer" target=3D"_blank">http://www.mailscanner.info/=
</a>&gt;, and is<br>
&gt; believed to be clean.<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Tuan Hoan=
g Dinh &lt;<a href=3D"mailto:tuanmcx58@gmail.com" target=3D"_blank">tuanmcx=
58@gmail.com</a>&gt;<br>To:=C2=A0usrp-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>=
Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Wed, 17 Feb 2021 20:05:18 +0900<br>Su=
bject:=C2=A0[USRP-users] Error when &quot;sudo make install&quot; RFNoC Blo=
ck<br><div dir=3D"ltr">Hi,<div>I&#39;m developing a RFNoC block, all the so=
urce files of user logic have been placed in ../rfnoc/fpga/rfnoc_block_* fo=
lder, I also modified=C2=A0the Makefile.srcs and listed all the needed file=
s to synthesize the block. (The Makefile.srsc attached below)</div><div>The=
 <i>&quot;cmake ../&quot;</i> and <i>&quot;make testbench&quot;</i> command=
s have been done without any problems.</div><div>But finally,=C2=A0I run <i=
>&quot;sudo make install&quot;</i> and the error appeared as below:</div><d=
iv><br></div><div><img src=3D"cid:ii_kl9bqcg60" alt=3D"image.png" style=3D"=
margin-right: 0px;" width=3D"608" height=3D"334"><br></div><div><br></div><=
div>I think the errors come from my Makefile.srcs, but I tried to modify th=
e source=C2=A0file list into many formats but it still happens. I don&#39;t=
 know why the Makefile.srsc worked well in the testbench process but makes =
the error here.</div><div>Could=C2=A0anyone help me with my problem?</div><=
div><br></div><div>Thank you!</div><div><br></div><div>Best regards,</div><=
div>Tuan</div><div><br></div></div>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0&quot;C=
=C3=A9dric Hannotier&quot; &lt;<a href=3D"mailto:cedric.hannotier@ulb.be" t=
arget=3D"_blank">cedric.hannotier@ulb.be</a>&gt;<br>To:=C2=A0<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a><br>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Wed, 17 Feb 2021 12:06:02 +0=
100<br>Subject:=C2=A0[USRP-users] User register on X300 UHD 3.9<br>Dear all=
,<br>
<br>
On USRP2, there was a concept of user registers,<br>
i.e. memory allocated in FPGA for the user, using user_settings,<br>
that the user can set in C++, using the UHD C++ API set_user_register.<br>
<br>
I am trying to reproduce such behaviour on X300 using UHD 3.9 LTS (i.e pre-=
RFNOC).<br>
I am solely interested in setting registers in custom FPGA logic<br>
dynamically using C++.<br>
<br>
Does anyone know how to do it?<br>
<br>
Best regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
<br>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Aaron Ros=
setto &lt;<a href=3D"mailto:aaron.rossetto@ettus.com" target=3D"_blank">aar=
on.rossetto@ettus.com</a>&gt;<br>To:=C2=A0usrp-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt;<br>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Wed, 17 Feb 2021 07:53:09 -0=
600<br>Subject:=C2=A0Re: [USRP-users] rfnoc_image_builder error with clock =
domain<br><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Feb 16, 2021 at 10:15 AM Mike via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Any ideas?</blockquote><div><br></div><div=
 style=3D"font-family:arial,sans-serif">Try changing the clock domain conne=
ction to your FFT block to this:</div><div style=3D"font-family:arial,sans-=
serif">=C2=A0 - { srcblk: _device_, srcport: rfnoc_chdr,=C2=A0=C2=A0=C2=A0 =
dstblk: fft0,=C2=A0=C2=A0 dstport:ce } <br></div><div style=3D"font-family:=
arial,sans-serif"><br></div><div style=3D"font-family:arial,sans-serif">Doe=
s that allow rfnoc_image_builder to complete successfully?</div><div style=
=3D"font-family:arial,sans-serif"><br></div><div style=3D"font-family:arial=
,sans-serif">Best regards,</div><div style=3D"font-family:arial,sans-serif"=
>Aaron<br></div></div></div>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Rob Kossl=
er &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu=
</a>&gt;<br>To:=C2=A0Tuan Hoang Dinh &lt;<a href=3D"mailto:tuanmcx58@gmail.=
com" target=3D"_blank">tuanmcx58@gmail.com</a>&gt;<br>Cc:=C2=A0usrp-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Wed, 17 Feb 2021 09:=
49:29 -0500<br>Subject:=C2=A0Re: [USRP-users] Error when &quot;sudo make in=
stall&quot; RFNoC Block<br><div dir=3D"ltr"><div>There is a regular express=
ion in the RFNOC_REGISTER_BLOCK_DIR macro from the main CMakeLists.txt that=
 searches your Makefile.srcs in order to identify your source files.=C2=A0 =
The regex is=C2=A0&quot;[a-z_]+\\.v&quot;, which has multiple problems, inc=
luding that it doesn&#39;t account if you have commented out lines in your =
Makefile.srcs and doesn&#39;t allow lots of normally allowable filenames.=
=C2=A0 Perhaps=C2=A0it doesn&#39;t even allow uppercase letters (depending =
on if the regex evaluator is case insensitive) which might be the issue in =
your case (note the error message for the missing file &quot;ine_block.v&qu=
ot; which looks like it&#39;s missing it&#39;s first character).</div><div>=
Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Feb 17, 2021 at 6:06 AM Tuan Hoang Dinh via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi,<div>I&#39;m developing a RFNoC block, all t=
he source files of user logic have been placed in ../rfnoc/fpga/rfnoc_block=
_* folder, I also modified=C2=A0the Makefile.srcs and listed all the needed=
 files to synthesize the block. (The Makefile.srsc attached below)</div><di=
v>The <i>&quot;cmake ../&quot;</i> and <i>&quot;make testbench&quot;</i> co=
mmands have been done without any problems.</div><div>But finally,=C2=A0I r=
un <i>&quot;sudo make install&quot;</i> and the error appeared as below:</d=
iv><div><br></div><div><img src=3D"cid:ii_kl9bqcg60" alt=3D"image.png" styl=
e=3D"margin-right: 0px;" width=3D"608" height=3D"334"><br></div><div><br></=
div><div>I think the errors come from my Makefile.srcs, but I tried to modi=
fy the source=C2=A0file list into many formats but it still happens. I don&=
#39;t know why the Makefile.srsc worked well in the testbench process but m=
akes the error here.</div><div>Could=C2=A0anyone help me with my problem?</=
div><div><br></div><div>Thank you!</div><div><br></div><div>Best regards,</=
div><div>Tuan</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Mark D &l=
t;<a href=3D"mailto:md964@hmgcc.gov.uk" target=3D"_blank">md964@hmgcc.gov.u=
k</a>&gt;<br>To:=C2=A0&quot;&#39;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a>&#39;&quot; &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;<br>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Wed, 17 Feb 2021 =
15:35:09 +0000<br>Subject:=C2=A0[USRP-users] OTT Gain Block stopping sample=
s flowing from RFNoC Digital Down Converter<br>





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-GB">
<div class=3D"gmail-m_-1473905172216144575WordSection1">
<p class=3D"MsoNormal">I=E2=80=99m working with an E320 using UHD 4.0.<u></=
u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99ve been working through the video =E2=80=
=9DRFNoC 4 Workshop - GRCon 2020=E2=80=9D to install my own custom signal p=
rocessing block into the RFNoC on the FPGA.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99ve also been following the guide AN-121 =
=E2=80=9CDebugging FPGA images=E2=80=9D and have added Chip Scope probes to=
 the payload and context stream signals.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have got to the point where I have the block insta=
ntiated in the FPGA. Running the example GNU radio code that streams sample=
s from the host computer through the gain block and pack to the PC works as=
 expected. I am also able to capture
 the payload and context stream signals in Chip Scope.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">However if I reconfigure the GNU radio to =E2=80=9CR=
FNoC RX Radio=E2=80=9D-&gt;=E2=80=9DRFNoC Digital Down Converter=E2=80=9D-&=
gt;=E2=80=9DRFNoC Gain=E2=80=9D-&gt;=E2=80=9DRFNoC Rx Streamer=E2=80=9D-&gt=
;=E2=80=9DQT GUI Time Sink=E2=80=9D the system no longer works.
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The Time Sink appears but the GNU Radio console is s=
aying rfnoc_rx_streamer0 =E2=80=93 UHD.recv() call timed out. Removing the =
gain block from the GNU radio design restores operation, so it appears that=
 the gain block is in some way blocking the
 streaming data.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99ve also rebuilt the FPGA with the gain blo=
ck connected between the DDC and Stream Endpoint but the results are the sa=
me. I=E2=80=99ve tried reverting the gain block code back to that generated=
 rfnocmodtool, which just loops the context and payload
 data straight through. <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Does anybody have any idea why this block would be s=
topping data internally generated within the USRP from streaming out, where=
as it works Ok when data is flowing from and back to the host?<u></u><u></u=
></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any help would be greatly appreciated,<u></u><u></u>=
</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Mark<u></u><u></u></p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</div>

<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Tuan Hoan=
g Dinh &lt;<a href=3D"mailto:tuanmcx58@gmail.com" target=3D"_blank">tuanmcx=
58@gmail.com</a>&gt;<br>To:=C2=A0Rob Kossler &lt;<a href=3D"mailto:rkossler=
@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>Cc:=C2=A0usrp-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-use=
rs@lists.ettus.com</a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Thu, 18 Feb 2021 00:=
44:55 +0900<br>Subject:=C2=A0Re: [USRP-users] Error when &quot;sudo make in=
stall&quot; RFNoC Block<br><div dir=3D"ltr">Hi Rob,<div><br></div><div>Than=
k you for spending time help me with my problem.</div><div>Let me try to re=
name my files and &quot;sudo make install&quot; again, I will tell you the =
result soon.</div><div><br></div><div>Best regards,</div><div>Tuan</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">V=
=C3=A0o Th 4, 17 thg 2, 2021 va=CC=80o lu=CC=81c 23:49 Rob Kossler &lt;<a h=
ref=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; =
=C4=91=C3=A3 vi=E1=BA=BFt:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>There is a regular expression in the RFNOC=
_REGISTER_BLOCK_DIR macro from the main CMakeLists.txt that searches your M=
akefile.srcs in order to identify your source files.=C2=A0 The regex is=C2=
=A0&quot;[a-z_]+\\.v&quot;, which has multiple problems, including that it =
doesn&#39;t account if you have commented out lines in your Makefile.srcs a=
nd doesn&#39;t allow lots of normally allowable filenames.=C2=A0 Perhaps=C2=
=A0it doesn&#39;t even allow uppercase letters (depending on if the regex e=
valuator is case insensitive) which might be the issue in your case (note t=
he error message for the missing file &quot;ine_block.v&quot; which looks l=
ike it&#39;s missing it&#39;s first character).</div><div>Rob</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 17=
, 2021 at 6:06 AM Tuan Hoang Dinh via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Hi,<div>I&#39;m developing a RFNoC block, all the source files of=
 user logic have been placed in ../rfnoc/fpga/rfnoc_block_* folder, I also =
modified=C2=A0the Makefile.srcs and listed all the needed files to synthesi=
ze the block. (The Makefile.srsc attached below)</div><div>The <i>&quot;cma=
ke ../&quot;</i> and <i>&quot;make testbench&quot;</i> commands have been d=
one without any problems.</div><div>But finally,=C2=A0I run <i>&quot;sudo m=
ake install&quot;</i> and the error appeared as below:</div><div><br></div>=
<div><img src=3D"cid:ii_kl9bqcg60" alt=3D"image.png" style=3D"margin-right:=
 0px;" width=3D"608" height=3D"334"><br></div><div><br></div><div>I think t=
he errors come from my Makefile.srcs, but I tried to modify the source=C2=
=A0file list into many formats but it still happens. I don&#39;t know why t=
he Makefile.srsc worked well in the testbench process but makes the error h=
ere.</div><div>Could=C2=A0anyone help me with my problem?</div><div><br></d=
iv><div>Thank you!</div><div><br></div><div>Best regards,</div><div>Tuan</d=
iv><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Jim Palla=
dino &lt;<a href=3D"mailto:jim@gardettoengineering.com" target=3D"_blank">j=
im@gardettoengineering.com</a>&gt;<br>To:=C2=A0&quot;&#39;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&#39;&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank">usrp-users@lists.ettus.com</a>&gt;, Mark D &lt;<a href=3D"mailto:md9=
64@hmgcc.gov.uk" target=3D"_blank">md964@hmgcc.gov.uk</a>&gt;<br>Cc:=C2=A0<=
br>Bcc:=C2=A0<br>Date:=C2=A0Wed, 17 Feb 2021 15:52:22 +0000<br>Subject:=C2=
=A0Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC Digi=
tal Down Converter<br>




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi Mark,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m not sure if this is your problem, but I had a similar issue. After =
some debugging, I found that for some reason, with the OOT RFNoC Block inse=
rted, the total size of the CHDR packet plus the Ethernet header that gets =
added on in the FPGA would slightly
 exceed the MTU size (mine was set to mtu=3D8000 for the E320). I never fig=
ured out why this happens, since this isn&#39;t the case if the OOT block i=
s not inserted (just like the flowgraph you described). Maybe just increasi=
ng the MTU size would help?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Anyhow, my solution was just to set the &quot;spp&quot; argument in the RFN=
oC_RX_Radio. I found that setting spp to a maximum of 1987 keeps the total =
packet size (after the Ethernet header is appended) to be less than the MTU=
 of 8000. FYI, for spp means 1987 samples
 per packet. So, for 32-bit samples, 1987*4=3D7948. This leaves enough room=
 for the Ethernet header.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
It seems like there should be a better &quot;fix&quot;, but you can try set=
ting spp manually to see if that helps.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-1473905172216144575appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-1473905172216144575divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com"=
 target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of =
Mark D via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 17, 2021 10:35 AM<br>
<b>To:</b> &#39;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&#39; &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] OTT Gain Block stopping samples flowing from R=
FNoC Digital Down Converter</font>
<div>=C2=A0</div>
</div>

<div style=3D"overflow-wrap: break-word;" lang=3D"EN-GB">
<div>
<p>I=E2=80=99m working with an E320 using UHD 4.0.</p>
<p>=C2=A0</p>
<p>I=E2=80=99ve been working through the video =E2=80=9DRFNoC 4 Workshop - =
GRCon 2020=E2=80=9D to install my own custom signal processing block into t=
he RFNoC on the FPGA.</p>
<p>=C2=A0</p>
<p>I=E2=80=99ve also been following the guide AN-121 =E2=80=9CDebugging FPG=
A images=E2=80=9D and have added Chip Scope probes to the payload and conte=
xt stream signals.</p>
<p>=C2=A0</p>
<p>I have got to the point where I have the block instantiated in the FPGA.=
 Running the example GNU radio code that streams samples from the host comp=
uter through the gain block and pack to the PC works as expected. I am also=
 able to capture
 the payload and context stream signals in Chip Scope.</p>
<p>=C2=A0</p>
<p>However if I reconfigure the GNU radio to =E2=80=9CRFNoC RX Radio=E2=80=
=9D-&gt;=E2=80=9DRFNoC Digital Down Converter=E2=80=9D-&gt;=E2=80=9DRFNoC G=
ain=E2=80=9D-&gt;=E2=80=9DRFNoC Rx Streamer=E2=80=9D-&gt;=E2=80=9DQT GUI Ti=
me Sink=E2=80=9D the system no longer works.
</p>
<p>=C2=A0</p>
<p>The Time Sink appears but the GNU Radio console is saying rfnoc_rx_strea=
mer0 =E2=80=93 UHD.recv() call timed out. Removing the gain block from the =
GNU radio design restores operation, so it appears that the gain block is i=
n some way blocking
 the streaming data.</p>
<p>=C2=A0</p>
<p>I=E2=80=99ve also rebuilt the FPGA with the gain block connected between=
 the DDC and Stream Endpoint but the results are the same. I=E2=80=99ve tri=
ed reverting the gain block code back to that generated rfnocmodtool, which=
 just loops the context and
 payload data straight through. </p>
<p>=C2=A0</p>
<p>Does anybody have any idea why this block would be stopping data interna=
lly generated within the USRP from streaming out, whereas it works Ok when =
data is flowing from and back to the host?</p>
<p>=C2=A0</p>
<p>Any help would be greatly appreciated,</p>
<p>=C2=A0</p>
<p>Mark</p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</div>
</div>

<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Mark D &l=
t;<a href=3D"mailto:md964@hmgcc.gov.uk" target=3D"_blank">md964@hmgcc.gov.u=
k</a>&gt;<br>To:=C2=A0&quot;&#39;Jim Palladino&#39;&quot; &lt;<a href=3D"ma=
ilto:jim@gardettoengineering.com" target=3D"_blank">jim@gardettoengineering=
.com</a>&gt;<br>Cc:=C2=A0&quot;&#39;<a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&#39;&quot; &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Wed, 17 Feb 2021 16:43:19 +=
0000<br>Subject:=C2=A0Re: [USRP-users] OTT Gain Block stopping samples flow=
ing from RFNoC Digital Down Converter<br>





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-GB">
<div class=3D"gmail-m_-1473905172216144575WordSection1">
<p class=3D"MsoNormal"><span>Thanks Jim,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>I=E2=80=99m using eth0 on the E320 which is se=
t with an MTU of 1500 and this seems to be the maximum. If I try to set it =
to 1501 it says that=E2=80=99s greater than the maximum allowed.<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>I=E2=80=99ve now switched to using the SFP+ po=
rt rather than eth0 which has an MTU of 9000, but this hasn=E2=80=99t had a=
ny effect.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>I tried setting spp by adding spp=3D1987 to th=
e Block Args field in GNU Radio, but still no luck. Is this the correct way=
 to set the spp argument?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Mark<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com=
" target=3D"_blank">jim@gardettoengineering.com</a>&gt;
<br>
<b>Sent:</b> 17 February 2021 15:52<br>
<b>To:</b> &#39;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&#39; &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;; Mark =
D &lt;<a href=3D"mailto:md964@hmgcc.gov.uk" target=3D"_blank">md964@hmgcc.g=
ov.uk</a>&gt;<br>
<b>Subject:</b> Re: OTT Gain Block stopping samples flowing from RFNoC Digi=
tal Down Converter<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black">Hi Mark,<=
u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black"><u></u>=
=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black">I&#39;m n=
ot sure if this is your problem, but I had a similar issue. After some debu=
gging, I found that for some reason, with the OOT RFNoC Block inserted, the=
 total size of the CHDR packet plus the
 Ethernet header that gets added on in the FPGA would slightly exceed the M=
TU size (mine was set to mtu=3D8000 for the E320). I never figured out why =
this happens, since this isn&#39;t the case if the OOT block is not inserte=
d (just like the flowgraph you described).
 Maybe just increasing the MTU size would help?<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black"><u></u>=
=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black">Anyhow, m=
y solution was just to set the &quot;spp&quot; argument in the RFNoC_RX_Rad=
io. I found that setting spp to a maximum of 1987 keeps the total packet si=
ze (after the Ethernet header is appended) to
 be less than the MTU of 8000. FYI, for spp means 1987 samples per packet. =
So, for 32-bit samples, 1987*4=3D7948. This leaves enough room for the Ethe=
rnet header.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black"><u></u>=
=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black">It seems =
like there should be a better &quot;fix&quot;, but you can try setting spp =
manually to see if that helps.=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black"><u></u>=
=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black">Jim<u></u=
><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;color:black"><u></u>=
=C2=A0<u></u></span></p>
</div>
<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center">
<hr width=3D"98%" size=3D"2" align=3D"center">
</div>
<div id=3D"gmail-m_-1473905172216144575divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces=
@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&=
gt; on behalf of Mark D via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 17, 2021 10:35 AM<br>
<b>To:</b> &#39;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&#39; &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] OTT Gain Block stopping samples flowing from R=
FNoC Digital Down Converter</span>
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<div>
<div>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">I=E2=80=99m working wit=
h an E320 using UHD 4.0.<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">I=E2=80=99ve been worki=
ng through the video =E2=80=9DRFNoC 4 Workshop - GRCon 2020=E2=80=9D to ins=
tall my own custom signal processing block into the RFNoC on the FPGA.<u></=
u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">I=E2=80=99ve also been =
following the guide AN-121 =E2=80=9CDebugging FPGA images=E2=80=9D and have=
 added Chip Scope probes to the payload and context stream signals.<u></u><=
u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">I have got to the point=
 where I have the block instantiated in the FPGA. Running the example GNU r=
adio code that streams samples from the host computer through the gain bloc=
k and pack to the PC works as expected. I am also able to capture
 the payload and context stream signals in Chip Scope.<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">However if I reconfigur=
e the GNU radio to =E2=80=9CRFNoC RX Radio=E2=80=9D-&gt;=E2=80=9DRFNoC Digi=
tal Down Converter=E2=80=9D-&gt;=E2=80=9DRFNoC Gain=E2=80=9D-&gt;=E2=80=9DR=
FNoC Rx Streamer=E2=80=9D-&gt;=E2=80=9DQT GUI Time Sink=E2=80=9D the system=
 no longer works.
<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">The Time Sink appears b=
ut the GNU Radio console is saying rfnoc_rx_streamer0 =E2=80=93 UHD.recv() =
call timed out. Removing the gain block from the GNU radio design restores =
operation, so it appears that the gain block is in some way blocking the
 streaming data.<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">I=E2=80=99ve also rebui=
lt the FPGA with the gain block connected between the DDC and Stream Endpoi=
nt but the results are the same. I=E2=80=99ve tried reverting the gain bloc=
k code back to that generated rfnocmodtool, which just loops the context an=
d payload
 data straight through. <u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">Does anybody have any i=
dea why this block would be stopping data internally generated within the U=
SRP from streaming out, whereas it works Ok when data is flowing from and b=
ack to the host?<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">Any help would be great=
ly appreciated,<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">=C2=A0<u></u><u></u></p>
<p class=3D"gmail-m_-1473905172216144575xmsonormal">Mark<u></u><u></u></p>
</div>
<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center">
<hr width=3D"100%" size=3D"2" align=3D"center">
</div>
<p class=3D"MsoNormal">This email and any files transmitted with it are con=
fidential and intended solely for the use of the individual or entity to wh=
om they are addressed. If you have received this email in error please noti=
fy the system manager.
<u></u><u></u></p>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000001b239c05bb8c7d81--

--0000000000001b239d05bb8c7d82
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_kl9bqcg60>
X-Attachment-Id: ii_kl9bqcg60

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
u689aKSXExCKutJTe1e/KTO8dNMxE0Pm7XtC3fw8jHmBEd9cJ2c6Z9rqyWzg
07enf1ZFK0U211zdnRraTTaR5ouk23sZT28X699ckz07ls3HwtdAN2/t9hLt
Dnz2Cskq5e0Yqn8/aOWWqZ1/A9CxcMDHck9Ild08TAR4djMgVLp2U+bUSbc7
JFYBg8CAwIDAgMBAd2Fg0HiPKWEjAy3+mxL8umHH+O4CVZheBQa6BQNCpdst
3CBUzwIDAgMCAwIDAgMCAwIDAgOdzoBQ6QqVrsCAwIDAgMCAwIDAgMCAwMDz
yYBQ6T6ffu30n0TPW4cukpmJ2/e/Gzr02d7mc5FGpuzKeW/6M4bBI8HNb1H6
7q1B6M2ce5ISXDxTPvrl8tYYznvWhHh/1gx0T83zQqA7/CkQ1R28IGB4Lhjo
UZXui6OjQuMiXrX1hQbS11YUEOxS/d+Jowu42xoBTexE/ubEzDJ5Y9HqoG5S
gtDvrSQaj08b4oQ6g2vLKlGdiMd2W3YhRLsS/8AEb0RcW7wm+/5EqtdmGPbZ
siE3QeOy2OEPzaFVK8ghWz2rEw94dvQC/oKYt23sQKQATQAkpzbZ7BSBqM0X
Kd7M1aWecjDMbRNtlyIXOhcYgBnookoXv3NEB6LCY/SuKqJiz2ib37rlNjTA
c2KoV9Suy1p+vgCaaIR9xiWeVT5tl38db/H+/2dyRaTf1HU3qfpD/3rRCdbN
bVkhqlPx2GrLLoQYV9o63Zrb6nT12grDdp77B4T++0Te/SYlRamaqvOPbvFD
XpoFx8WvdDEcWmPD7oC11iGcyxCtnU+v7Y7AHQkybyMDQKQATTZ23tWH2eoU
gahRzq10HQxzRNx1tYSE/gUG7GSgiypdMXY3YDvxcaPIwYnT1Tv9HOaXMdDk
Ip3kEzihm7wuym3S9uvU4+zY4R1gj8sk9BlpCyCq0yFZtWUvQqQrbZxukbYc
GjJavTbCsMNi37dnbc/5YPnCwKikWesOXW5uf3xs4UsWVRc8Ln6lK5YgObSG
Cj1ka2dB4rT33M6n14JJeyHBzNvVGxApQJNdJrriYBudIhBlI1Gd6COHwrwz
A7YTxyJ0JTDAYaCrKl1G/X3eSjhLEufeZ/be1MeDi2fSprPFt2vlLYSWVDZc
z82cPtq4QkD618C1mQX36pWUllIrGqoLs5LZSbp35IEa3hsE2+XZsZ7MSKSv
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
sVt1jj1l7PW4zArq1qZICxJYQjx8kz4+WlDRRBuNZH3Ng2tnt4xhN8WCHIKd
Lt4WW1XRRHn4Jn508LcHjRTR8PDSz18Gi56QpXhNG5K+78TtR3Vki5FqfFiU
90kMd9u7s/FyCiELHhFKN6+k1WcKS3UG0mg06EvPfr92pI9oHyfGFisAY8m1
y0V6gmrW3zqzQ/pssu4+Y/dUtbRUbYmxuvkJpV5QUSocvcBRXfxT1h+/fpdJ
IrKu6u7pH9aFDRG9Cxfjl0Kp8vCJW7Tv8h09QRvpRl35tbNfh4qu9SuUKA6d
TFjsuSWQXlA2GLFJiQpcfaqevpeTzP4IASaEctm9f9S73569XtlAMMopzz+y
8k12fzOYeioFnnl8pqhwtvjOCZ2VuISFEeJtAUSBJcXOoEj23gBEidcCxz4j
1CvVhgQGMz/iKBPzqFzmg4KVN/AF5OoApgNrBVdtMMwDAOQhmYGnmoF26nQd
K0POlIaOHRVN7w8vEo1Hoszn0pzx8S/Re8qpu6tDRR1YuxHrSlvOxc6VCHG2
JKsjyhGNemV+Q8FGH37PK+o7zoihTebB+dUmk7d+EjvodT11nS+XWx+IJzhD
B5eoK5mxIx06dLVxJVeyLZkBkAG5022r3vH1iJiPl0yMjvEfHzs2dfPxSrpy
/5z/M99O58QKPSDku0dkUaYPf0c8GEgn5hcf4kpbYrv2f3YlQqwt/NqjfsEv
YlDQxNELd+fXlW+NF94mYL+DLvgm1q/2lJYDfuHpdWCSNvClc+eya7lqq/pp
mqejS7QN1GU3Y/h06BTVplPrUAb/lDEgd7p21x24xrm/nbL5yv1qZjsBoa8o
OLx18Vsa/qGbzpnoO33bY+rGFxPYBxi1s+xcaaszs4Ffe7wCs+7VU2Rt2aXN
KWEd5CXSUsV2+Cjj6W1n/VtqsnPnsqUvUg108FGMRD1Cswok78g0PRGz+LPF
2bihNWNccTWMY7g9EOLToTNUmw6uNBnes8WA3Ok+W/F2acfQybsiLloAACAA
SURBVFZZWQkyAzIDHZOBPsM8R08YGGT1z+iQV73wQ/zr011RiDo+wo4ZWRmV
zIArGJA7XVewLPeXMgMyAzIDMgMyAzIDMgMyA65nQO505U5XZkBmQGZAZkBm
QGZAZkBm4OlkQO50n864uv43Uyez6KaamLB++7th/VxxZROvMTd1ZPKmnNnj
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
lKFmUQn4BWieyxT1S5FfHCrSG2hSX3blU3ui7LjLIHiVAisbrETdvJJWnyks
1RlIJu9Kz36/dqSPZActWlFQ3cDAkMYrcPWpevpeTvLfu6sAHTIZhCUKchkS
G1PT0H7hEhZGiLcFKArKFFwopRxandOFSiW69kIw8H6pgCEbFbu7z9g9VS0t
VVtihFsS7eh0oXhBS5VQ9uUPMgMyA04x0F6dLjZvJWXOKdDYyZ+y2f4Svaec
urs6VLJst4v7rrTlXJieFoSa3h9eJBqPRIlPOqJ+iTnHkouPsi8obeOyfbba
JTtaz2qnBt9695+6GTTqlfkNBRt9+Ds9njoHO2geyTzLDDjFgNzpdtwmY0DI
d4/Iokwf0Ylhp2JsT81ypS178Fh/pzMjfD0i5uMlE6Nj/MfHjk3dfLySrtw/
5//EN312XBFaB0L8F3xQ2t5lvK1OwF6nBi+O+DP+Wf2CX8SgoImjF+7Oryvf
Gm/xbqB2K87POOey+zIDrWdA7nQ77DLZd/q2x9SNLya0+jlldqjElbacI7wz
I3R/O2XzlfvVzFYTQl9RcHjr4rc0/HOXnWOjgxyFD0rbu4y31Qk6jE4NvoOI
rUPA8ArMuldPkbVllzanhDn33uxOINcOQbUdy5aMU2bAXgZc3unKeS4zIDMg
MyAzIDMgMyAzIDMgM+ASBuRO197fBPJPTJkBmQGZAZkBmQGZAZkBmYHOxYDc
6cqdrsyAzIDMgMyAzIDMgMyAzMDTyYDc6bJx7RIwJ23z2mD022s7128XGa2Z
ATd1ZPKmnNnj+rnk+ojZbqcw99Ro3k01MWH99nfDXBFlN6/kVSfOr43u3ylC
3DFByllpZ1zanCg5U+xkXv7aU8dAp+p0nxscFRYb8XI73LQufm2VzRi3Hwy8
aeaBkUT1/rHcM+rb91eX2BbzujviD+5/xL6Z+DfAtQEk+22JEUL95ZN7pJ29
CPERh/xqk6OsNP/WiMxCXfXlxcHOtYyudNnCFj7K9ivKXrbxtuydgXuccOty
GfALGLIfYft+sy04tBMhwAYwZOfk7f61NicKP2Hbs4G31ea8tT34Nimw8iQd
iYF26XQ931x3m6zcNaI3r+ne8VlV1NXPxlq/G9YRLjwHbyoh7m0Z3A5P3bJa
9XnkiAauHWFg2eg5ZtkNqnL3v59D4AGgOjVkaatLP63XiDDvqE3n6fbudFX2
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
UvNy+Opvz5dWNzOPurpzfv974UO4DaNsshlLrl0u0hNUs/7WmR2SRwKZ1yfr
kPTURnx97lZNM2UkdKWX1kT7cqdtPHwTPzr424NGimh4eOnnL4OFR7FYzyD6
i4dP3KJ9l+/oCdpIN+rKr539OtR0LdLrtfiN+/LvP2okKcpQW11x89Ked942
neJl4GFguPePevfbs9crGwij0aAvzz+y8k1+H7BCqWKeMnarzrGnjL0el1lB
3doUKdxeKpDj4Zv08dGCiibaaCTrax5cO7tlDLsp1q1/3LKD+XdqDJSxhWrS
3bl8OC02kD8c38ApVQq8Ldao5tWpX/+nuLaZJvRll9fG2MH8a9qQ9H0nbj+q
I1uMVOPDorxPYri71G3Rq0TbwiEEXAbXVAAGRBQUZSyH6hdDl2efv68naYOu
JPd6hZG6MJdVFIhQhYsy1CwqAb9UeM1zTaH6pcgvDhXpDTSpL7vyqT1Rdtxl
ELxKgZUNVqJuXkmrzxSW6gwkk3elZ79fO9JHsoMWrSiobmBgSOMVuPpUPX0v
J/nv3VWADpkMwhIFuQyJjSllaL9wCQsjxNsCFAVlCi6UUg7t7HSVMlHmzVcK
pafv+ju0+MGbLY+E507ilpsOkincKgYtiN19xu6pammp2hIj3PFpR6cLpQP/
o1fUAHAw5H8/Gwy0V6eLFZakzD0bLGPZgN3/S/Securu6lDJsu3kbB3HFowE
N+pKNnAY4L/bh1DT+8OLROORKPFJx05bf13psn222iU74LjbM9qpwdvjoPwd
mYG2Y0CjXpnfULDRh7+Rpu1m7qD1QXawnRmQO92O22QMCPnuEVmU6SM6Mdxu
anClLedqTWdG+HpEzMdLJkbH+I+PHZu6+XglXbl/zv+Jb/rsuCKEg4UPStu7
jLfVCdjr1OBhDcijMgNtxYD6Bb+IQUETRy/cnV9XvjXe4tVL7bb2tRV4eZ6O
zIDc6XbYZbLv9G2PqRtfTGj1c8rs0J8rbTlHeGdG6P52yuYr96uZrSaEvqLg
8NbFb2n45y47x0YHOQoflLZ3GW+rEyyBnRq8q8TG3FwleRGm6bGXxWvGuOK6
VicQkqti8YSo8ArMuldPkbVllzanhDn3WvInhNyORfYpj10HZ8Dlna4sRJkB
mQGZAZkBmQEpA32GeY6eMDDI6p/RIa/yL0KXHiJ3DzIDMgMyA7YZkDtd2xx1
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
QV3TbI3gg9d32VmSnNNM5S9251Yx6X26oIuh7LeAtjiLzisvkOSFRdyOSeZN
FPO2wXvK1A1nkjyNrzuboldkBbDFpQQCocZxPZcNks2Wp3SRMGDClE0bVJQh
CGEdsn6B9RYcvIXMm4qyWTB4BSvpv+YuSdyex93HKeLnIZJe2msQUc7BJxWK
0/O0+9EFQqfgU4rGY7PeEYoQHWqJemdk4q4SReODnV7cBhWT8QK7zOX8wKVn
SfLiUu0+KN24BEpRk7ZEAtMjgF72wpWuCFFfmkJg0Rp0qHNB/2P4fcwAZgAz
8BYz0CVKV2Ttuvy0XF19Y8uUkJBhIYkp2XUq+ZUYF1pvMdNSW9XNnXNnJvjE
r8140KyqOjZJtwyD4vq92FN1atnlH5N8QqMnzFs7eSxzpVLE3JFWdGJhQpzP
zNTMR2bdkSYQTUsrIZUVV75KnDFucnRQ+j1SczONzah12Qqi8GjKxMCgIV4h
0jVX6jULgez0AIYxYOr6h0qqJndL8kL/sCjvmEVzV8b35W3J7TlpJ3NH2rP2
3JHmJN1VSZZmaNeeufnJTjr7RovqxbXkObGeIdFB6fla8IJ+0xbv2zY7Idrd
N3Bo4Ix5x0vJ5isx9OZOEWLiZFohttifQH3C0irUTfl7oiLjAuatDmB3RSOY
t5NGna9VK5+d37Z26vTosWFxgfNXBzLfMkmvAGiLhgFBCHdZq4FY3vhKFwkD
LkxNRBmC0MS+EbDeQoAXWMS8qSgjYIAL1tpl0bG6Nvm9A7NjYn0Tvvz6apX2
tk4kvZBQ9h4afYloPDrzHTblmIhPOtqszFrcSyhCdMgnysZ1TsYTQn4rbSh7
k6uJeIFdZrOFvrPwkar194Px0fEB878KHsPbFwFMURO2ROARAJ69qIKF1xdy
BECNrpzXOvLxhzEDmAHMwNvBQNcoXYFQ8mHgut23yuuU9KOuHt86vjBwBLtq
y0xL6rL7eSVyglLKi6/vjZSa/ZhYe2nQTzeL65WUmpCV31kf7sredtbDNfbL
078/b6GI5hd3Tv3grXuSFCpIPVyilh7JeywnVGpVi6zy/o2ffDnB7fhJ9JYj
+c9qW0iKUjTUVT28c2jqUG6Jl54PIDCsnUJn7b5RUN1MqNUKeWX++bWDeRst
6KeMFTe27yljn0alV1HFW0N6Gk0/PVzjvrpQWNWqUqvJpvrn92/s8GM2xVo5
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
g/vFJ4r+EaW7+kHH5W+DxjuO8R888+enqpq98wOcpN5C9lZm2JDSe2j0JaLx
6Mx32KGP+diko83KrMW9hCIEeD4Mw3iZGDfApceOWvQdro9Urb8fjI+OD5j/
VfAY3j4WYLKZsCUCz0SIUCKqEh4U5EzEqxcdyfhNzEDXMdA1SlcglHwYuG73
rfI6Jf2oq8e3ji8MHMFuGGWGA3XZ/bwSOUEp5cXX9xo8pocrb2AB2EuDfrpZ
XK+k1ISs/M76cFd2KaWHa+yXp39/3kIRzS/unPrBW/ckKRRxPVyilh7Jeywn
VGpVi6zy/o2ffLnrg46fRG85kv+stoWkKEVDXdXDO4emDuWWeGl4EBjWTqGz
dt8oqG4m1GqFvDL//NrBmn3A9EOjnGdsLW5s31PGPo1Kr6KKt4b0NGKjh2vc
VxcKq1pVajXZVP/8/o0dfsymWCunqFWn8x/XKyh1G9Uqe5x3LjnSU/N1+Cwi
FAngtpiISD6e9tMvpQ1KFSGvyEuNMIP5T6Q+KUcuPaptJNvUVMuLkpxvItg7
x03RKwTbgiFEuMyfe4ymQAQMFFGoKEM5RHVo7q1g+vM3KuehzKOjDJ5ukQUr
ft93dcatZ3JSpZCVZRdUqanb87hKQdCLgNFtiDKqOHZcsnKMW3e9qFymIOka
L7/xc+pYF57yoL8Fzl4L4mWYvZ7rrjapnmbG/4u/tQyIE54AqOyFg4eNAIjS
Y54yBhsPEbmBTACIX4ZE6VWKg+uPj1X8B1S21WqfzwgeUuxGz/2NrDsYz9sw
5uh3uEF5c7WQZh4K3hCGfryQzINLj005+sCUkI1nSuQKFSmvuPutZuyFBQXJ
PD0hAmciZCgtCQqyQ9S8rPEafwYz0IkMdJXShUI0GA5wWiMY+Hv4oUrK9BPL
ET2Y3/QqbZmPiv9JjJDPhmWvLeDQ7IKV9P0il2g5H8pf4ATqMKHIAhiW+Yu/
hRlAMIDzEEEObsIMvEUMYKULmYy7QYwH+RyoJUvSXXgLw12G6lXagv4KQnqH
EVrGG/9blnCIUrqfBkV8tSI4PMJ9UuSEpO0Xq1XVx+f+n8kVR6ElMJC5wfcR
v8YMmMkAzkMzicIfwwy86Qxgpdttle6AhF0vqQcbAzr8nDIzcvRV2rKMcIzQ
Mt7437KIQ4TStR6auP3uszp6Cw0hryo8t3P5EInmedJ8uwavLYLxypQu/Tgq
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
uPQsSV5cqr0IriPUynnlBZK8sGiE5vo4/dCDjxffaKGKU3zNk7Y85UfP+mil
KxT9Peh/j+S1L1p1TxnjawUrl9WXSOLk3CG6NwEdMou4Rbv8PDVafEzizufE
r2vG0fsrEHIW0WTgBe9P2+A9ZeqGM0mexrsX3ok52ah6+AWrsIUi29ADVWRH
lK7p3QuDvi8iaw56MVuBdRTx0ILeRCpdUG7AlS6bG4XJ47k74bDSBRGuqy/c
ihnADGAGMAOYAcwAw0BXKl2BfWDKI1Xr7wfjo+MD5n8VPIbbBkob7hOWVqFu
yt8TFRkXMG91ALtDdMDU9Q+VVE3uluSF/mFR3jGL5q6M70s/4xb9D/WUMUX1
/jGsPrMbuyBH+cefJPs8Xeshc7/e++N/Y6eP9A0cHrpg+dlyojUvyYN3L7+x
0rX7fNZNojozVvtgXYHQZcrpZkX26t52nNIlrq53oZ9Qxv7zG+jCPJuMUbrg
JoRrdtKo87Vq5bPz29ZOnR49NiwucP7qQIYom1HrshVE4dGUiYFBQ7xCpGuu
1JteuDXYwstfMRUJRMwdaUUnFibE+cxMzXzEuyONQfhe7Kk6tezyj0k+odET
5q2dPJYXSqgLKKULzA240hUJRNPSSkhlxZWvEmeMmxwdlH6PxHekQZlH1wtu
xQxgBjADmAHMwF+HgS5VukLxByEbz5TIFSpSXnH32whX3gqu5ONpP/1S2qBU
EfKKvFRNk7VT6KzdNwqqmwm1WiGvzD+/drDJK+bIkyN0Slco/mfcyZo2Tuna
uM1ccyznAf2gLjXZWlf02/GlU0bprZ4aKV0rxyWn6CVh/jq0hN5j0HolyknM
runqnzjxR+ORGbQsZpQuuAktVj6R+qQcufSotpFsU1MtL0pyvokYxnDo+En0
liP5z2pbSIpSNNRVPbxzaOpQ0D5d3QYApNJlnjL25enfn7dQRPOLO6d+8B6q
r2XtpUE/3SyuV1JqQlZ+Z304P5SwakEqXVBuoJSuUNTDJWrpkbzHckKlVrXI
Ku/f+MkXtLXD1O8iGFr8PmYAM4AZwAxgBjADbx8DHVW6bx8j2CPMAGYAM4AZ
wAxgBjADmIG3gwGsdNGrqrgVM4AZwAxgBjADmAHMAGbgTWUAK903NXJvxy8t
7AVmADOAGcAMYAYwA5iBrmMAK12sdDEDmAHMAGYAM4AZwAxgBt5OBrDSfTvj
2nW/jXDPmAHMAGYAM4AZwAxgBt4UBrDSxUoXM4AZwAxgBjADmAHMAGbg7WTg
lStdK3FI/NbMOfzTyN5OZt+U3zpvM06cbH/xZ65ZiYJjftwzy5939mGXjTZW
jvFfX7qVGu70F+fcpPtvdFXijDIZX/wBzED3Y6BjStd62NpryucbAwf2DN5T
ocyZ48o7eUE3o0gc1hUQdccnDKBFlcEzU18hI3owOsNuOzu0HzU+9dztClkz
oZS/eJx97Etnk48K1nH4uvSo+KPF2QT3KGDiyEz+8XWIpteF1tCu2cnW/UMJ
QvgaMgoEA5GlrwGhXg7AE6DzsxduSw9SZ4w8CPCIpk6HYWGHnUGUcR4OGZNe
JKvLW+7dtb9q4OA7n3m4LQuZZ+Zfc6Zsy/vvjPTG1jEDnc5Ax5Su1aCVWYqy
VH+HHv47Himy4weJAYlu77fqAVV98L//YGbErqhegFHj2VcfhllfMe6E/077
OhR/MOuCTF199tvEcZPCPMPnTJ855cPenR7Ozu/QZqDUcYy/c+jWWyoDpStC
NHUCvXyqLX1tbrJ1/1ACEL6OjALAQKTc60ConyqIBOj07EXY6vRyQIBHNHU6
DMs6NIMoZ9Gco0Wt9BoK2IRxHvZ2j7nY8kebbHfUYPBX9BPD4s8gwHc68whb
FuM3a8ruJK4sBom/iBnobAY6pnQF/ef/3HRvySiJzei03Mazwf0A057N2B/v
UbUZEYNY6F1RveaQYgDDnK+gP9PODh2GbnpCVOxy7wOgCG2oO7RauyRfpgyV
LgsM0fTakZuZbN0/lCCEryGjQDAQ+fwaEBqknMkE6MTsNWnLAFvH/0SARzR1
3G4He0AS5fB/XolfnXncqFKr1JUwpQvMQyvxWFev0e92sUpDgqdroROZN2nL
kkCYMWVb0m0X044hYQY6xkAHlW6fqWlFZ6cMEAnEC48U7wTJOIfPNjwiqw95
a0QwU71tdRXlNa0k0VJbkLXVn3fwbA/X2JUnC8qbCGVjZc7xNC9X9kxaB5fk
K79XNyta6x9ePbzlbGF1c1PZbxl+n3GbJaydwuZm3rxf2aRQNjzNPZEYMJx3
7DA7ExvCsHKM/frq749fNhNqlUJWfv3wN1JNbzShfT3GJR/OKnzRQKhIRePz
4iuJXvqn4woNOxQIxf+c+OWG47/eLa2uayFVKqLxRfZ8Dxphz5C9FWr9w4Cp
/EUj6SYrx9i1F/MfVsoaCRXZUnMvK33icN0yBoQNxiPTCEESBP4tNIeI4RvS
JH7Pa2V69uPqFkpFKeQ15Tnb4nppRkO4LfFHCYfv00c0t1GtdUXZB2LHf6YJ
JZReRLzQyaapnO4fSkOE6IxCJHYPl5gVx++VNhCUipBXP/ntl83e3InKCOa1
iWQIo/vnPJMA6rK7OQ/rlKRSVnR9T6SU+8nNRh+SvSILSk9Pl/R2HbUhv6Ex
P3mSiyaBtTQavcBVqZ0C7Cetznt+83DqhBn/K6JgStcgD1HbBtADLHwgMoqR
duwalnKd6s4Z5TL5VKOq4n+jtEsq9v5f/E7JT87lhl/TUzbUd82AiT+AGXjj
GOig0hU6/8d99Hu9RYLeLn1Guf9NMxzoSsI+MKWEer43WtvEzAeq+5krA8Kn
e8/eeLpS1ZSd/IkdQ5w4ckMJ0Vx4fEF8jFfC+n3FCqJkt1QsEgidJhxpJHI3
S/1nbypWKe5s9Q5ctPMp+XjblJ5CkaD/5DUPWuvy9s2IDBsWOHvJmXKl/Fr8
MP0dw2AYVE76nHEhkb7zN50sJxRFGR7MTmKB3ajQY5WU8tm59LURMTFjw2aE
L0sa4aC/McOoQ4GQ3jpGthakL53vFxr+eXCU/4xoySeMX/3c+nv4T9lfST77
ecoYH4fRPg4env9kRiKWjds7En2nRPnN23S2St2SkzKA3b8LZUNkFkLjWCD8
MsUhTBBA1zD6hKWVq6qvbQ6bHOLqO2VszJL4iHE2LCSkrZ7u00Mjp7n5BI2M
WLmtoIV6mjGyL1tUcHrhfqGSTctP9w+lMUITGQVJbFHE94+I1pIzS2bGSkNi
p2wvoKg7C0ZwlQJnXjOoGcPo9jnPJEBbZfbOOTPjvePW7ChoVlUdm8SJe9ov
cGJbVHqMLea6h53b+M33ZLI7yUHDTMtcePaaHNnA4JnEBje9CVVp1ZseaXv4
biuEKV2jPLSReIhH+wwM3pxjdN0JNcAiByLdFKYdKFhiaaXbnTNK/K/ZWY2q
x1/7cEszNqO/z6Uaf545VJOKpqZsfX9hPOD3MQNvFAMdVbqaWRBSHj39fiqi
qraE6u5k0s0H9Fck9qtukcT1OGexQCgWLsluoQqWe3Il2sMzLZdSXFg8yopR
uopzif8QOvodkiuyFr0ndPTeX6+4uOR9ofjfC682ybOm0T0wYCQLfm4ir64a
bc2DZAqGyHb8pnyq9VzSSCuhyDZw91N1U9ZSKafMeP1oQ2vcIad0ZUd8OGVm
wIzD8K1lxNMdw/XvQjNgw25FDkFmJwxGs2ESoeTvIpf3HVzfd3DtJXLWegH3
yzSH4ImTYQbc1G9WZqPq4a7oD/X9FZgXL5bnd2NPNVB3k5jFbwS9cL8Mbn/k
J5suOt07lDROEEKRQGhORvETW/yfpGvNVOHqcdxFg3cSzit5Sleb2wKhSJ95
jisQDObnR7fIeV1A+Y7o15fI2n39TZK4tNxDOziAshcxEKFKj7V1dEFg9LGy
xooLM8aatWEUnr1/6apEKF1QHtLRB4XScATgD7DmTBz8XGJfd/+MsnJceLRR
9fvGgB70+CxxTH1I1p8MpBeM8D/MwF+Wga5VugPd0svI53s92aVNVhjRv4l1
Oz5tI4/WUw9WjJYIhI7emXVUWYab9rJLn9BvS1Uv9kXb8pSuz0G5ImtxL6Gj
V+ZLxeVl/+pNv2hrU5MkSXD/KPUf6pL0yUyds3E1DUPQJ/S7MtWLvVG2Qkn/
NfkkeT3OSSOdAQMEoEOEFGOGGPN0ScSROurBCk80G6YQ9oncXNXG7pZQP98z
muMT8S3THAJnEW7oB2/hdZIsOFHY2tZUcXvfptU+Hi4abYG2JfkoKGXH9aLS
l40N9VWPKuSk6uEqmg16yKaXzAGiCuGXwTwn4iWbtuC7dyhpx4EIzVW6vMSm
mad4O8X1lS6CeWgRwYPCfuUV5jygSGkMBrpEYD859amqel+MrebzoMRGDEQm
k62tQd6kbs6ZN8pgs5M23wxeIDpEVwrjHbj0EE1vSlUi1nRh5WCO0hXZ8gZY
MyYOg2AxxOrPX90vo0QCoUvQMRn1KN3FXiSwD1hTRD3bG/13TcJjvYsZ+Esy
0KVKt+/UtHKqdEe4dl4xnntsww/XUKyacfTOrAco3b16Stc7s675wiK+0qX1
cfmhyVJmV8Bo9r/e/QbpVpEFZsDgDViSfsl5JHk1hneJ0zAzQB12zqxvFhum
EPZ2FU2cJg2JlIZEek4c34t7wgPiW8zUjuQQJAi4aQDR1NN50qSV2/fnvmhV
1V1Lm/YBjQRly9ot+VIzVXohLTQk0Hlc8Ji112RcbqCULiJeBkKHl2yaOayb
h5LeMg4oIiYhzdKRvMR29Dkop55s115V4CtdJPMMV2AYsJ8fLL1mIeQFBTEC
ILJXE0rQXG6QAAL2xzM9pHDfAmWvhTAYW9TNzIwrtSpZ7lYpYgDRWBcIEX6h
KoUdkUDgEX5xTW9AVSJ2L4DzkHbNymW18V2zBgmgn2ymJg5dmDjqjOev7pdR
NNR3ww48o8q/m+j4t+A9pdST9X66ez8M5zKQj/gzmIG3joGuVLq2QXtKqYq0
AEc+a/ChB3HRkN6ny+xe0I449IIHs6Yr/njxjRaqOMWXJ231q9ccGNbu3/yq
uaxpG7ynTN1wJslTe92fj18gFAE77Gyli2BDZBKhAWD2T/i3THNo5bzyAkle
WDRCs9lLGwgRokkDw1mSnNNM5S92lwiEKFvvxJxsVD38QsrtHLUNPVBFmlzT
RbEBTzYOf/cPJQShuWu6vMSW9F9zlyRuz9NszOUrXSTzNFcQGJ2rdDs/5w0S
oKd0wx1KcX6RuzaNQdlrIQytrXdGJu4qUTQ+2Oml3VKlPyJp6oIhFjraoCqF
7QEEnktsRJPGevetSsQ+XUge0l5bDVx6liQvLh2lDa6xMOUpXdP0aojiKGX/
1EaZ/fM1Z5TdSI9lm9esiPg3e6OLNs3sA74qJKsOLY49KWvNSeln0Kr9mPEL
WIfGn8TvYAbeJAa6UOk6SXdVkqUZI7W7ERheDEYK3tAjEoiYO9KKTixMiPOZ
mZr5SO+ONIjSFQkGTF3/UEnV5G5JXugfFuUds2juyvi+utpGwGirurlz7swE
n/i1GQ94t6rYSaPO16qVz85vWzt1evTYsLjA+asDNbuHBUJwh52tdBFsiAQm
EOoNzbrxGvEtExyKBH3C0irUTfl7oiLjAuatDtCxAWnqN23xvm2zE6LdfQOH
Bs6Yd7yUbL4SQ+8/RsXLZtS6bAVReDRlYmDQEK8Q6Zor9abXdFFsoJKNzsbu
H0oYQrTSBSe2tcuiY3Vt8nsHZsfE+iZ8+fXVKrVmny6S+TeCKHDOMwlA3do2
d1zI9AmJW06WEcpHOz1FvA8DExs6EJmbbDauczKeEPJbaUPZm1wRUwKuSt2F
LDoufxs03nGM/+CZPz9V1eydH+Ak9RYO0G4kQ5SDSGAfmPJI1fr7wfjo+ID5
XwWPoTeQoEYAk4MeKGrdKqN6Ttr5RP3nn+pnGwIMVm0l9kuzm4jWFrL+wH/N
uC1S4ym8Q17JaD6sm1nwO5iB7s5A1yndT6PSq6jirSH04xH+f3tvHtfEtf//
f/8NoPi57a/23t7a2wjaqkkQcAGLLEVwYRFlERBZZL24orgrWlGplt5iW1Fc
0GsVt+K+UhdUvEURUZRFkE1ZhYRASGYJ9veYrJMwMwmLCvHdRx52yJk5532e
7zM5r3PmPeeQPkw/PWxicZ/vLj57JcKQ9vqHF35xV6w+wzCnS2RubBW46PDd
woZ2RCoVC2oLrm4br3oRiskMadWT/DIBgkkEpXeOaCw/9JWrR1LmjedNQrRT
ionqy3J/CFH+XtBk2PdKl5aGjCeDhSTaZPLEMf1VTAyJDHlfhu77o7JVgiOC
mvzkEFvSxAlFkpFV+MaLBeUtYkzaiXXwy/OvJIa5qFoCfVmWX0Xszix42SRC
MUzc2lxX9PDkvEnMcbpMNJgbG6v/u5LWQmalS9ewuZ96bk6//1KA4mJ+VU5h
nRR7EKfAy0CeMwBA0bR5I8vo7XdKqvlilPhlqL77e/I0G60IWorWS8wpUv8Q
daexuWzPbsMrMmL+oXODGLgr1QNaC9tfy3HykoydTXuDlE8FmW4HDovN/cz/
50tlAjGOCmoe/Sj7jWL+BaD/IZI5mqpR9asWZWS9YE+pUPD8uHfXPZvGRO59
1YkV756oOdOk3SNo1pEpQ80zmfOBVCDQzwi8NaX7t+CTtdiL7Z5a/QrtL8hb
4kJnhtYvoP6l02Wofw5wZj8h0P9d2QML9W7YvJGb8hDR1UDyBCdNZ9YDM/qJ
i8EMQyIA7dCQvAl1AQLvkMDbUrrjPI43oWWy1z9pus93UklaM/QWBFrSnDbD
d1IdLWPgz94Q6P+u7ImFTA37a7+QLRvmBIc4eofNWrn/egPecHbpP3XOOLJ7
YgbcDkCgrwlAO+zNzx1cCwQ+ZAJvSemOiT30GnuqWNLv/fGlN4NJEDBIc/oM
+/pn/f1BY6i+ISX1f1f2yEKGhm08KX7/o5fNHbhUigjqiq8cXD+Rp4qApG9v
PTLjnd0OxMKrWhsQKhbYq9wx8z0/UJJD6P8WvjNn9aqgd9UOwV+9cpMh9RFQ
F8Mh8JaUruEAolcAUEcgAATeO4FRThYzfCa4dfnM8PhSuQP5e+65+7+F792J
/coA8Fe/cgcYAwT6gAAo3T6ACGoYCAABIAAEgAAQAAJAoB8SAKULShcIAAEg
AASAABAAAkDAMAl8qErXyDLm+xv3k4Otevxk09hq3qpdm6y/7ofDFzDJUAiM
8VuSmmSv125bhlJlw/ydBe8AASAABIDA+yLQc6XLHbY6B1EsfIhkLiRvUcaQ
1Kt6fmwX6BXm97nut8V1l8Lw4o4+2tdofExqsbi99LiPjWJDL32u6sE5fVjl
HpTey0veifEMjY0hSXcLYZk7zUi+8qCG345IBPXlOWe+s1Ys0jxxaloJvzl/
vbvWau165Ekj4+hAmdiv+f0l2vb04Aw9dtvqpbPgciAABIAAEAAChkhArXSt
vgr56fCflU0diIhfW3DjtxhP8u4AFL24yVhXy6le1oF77uNaSpfDkMQMcYj9
4qSrT2taEQwVNVY9Ob9n8Qj1bmcWdnuqkIoDdqpdIWh0A3MR8tReKV1ztyV3
WyXlJ2dNeLsyl8Xuyyrrg6VPz3lHxjM0NoYkXTXlfrboGl/acPnH+OneQS7B
S+YvnKsYYg13jLwuetPJPxw+XlcmFHcN1SVMoEwd152px1/fSBjVF82eqnQ9
jYTTgAAQAAJAAAgMRAIKpWvXq2W5AAAgAElEQVQxeuWNeml74dmd4fMj3CPX
rD6QudaXPE1LWzdjm8SbmLbSlXeoDEnUPa6579YStL34XHx06GSv4JnLfkze
GPz/qeUskyCgzlB9rbb9vVC6PPbym3xJ8baZevHprmGa5/dllTVz1gbyFlLf
qfEMjY0hib7WFpN2vUBqDjlS7TBkxJ1m6zblI/rWRZ8tJXZmUNyhAUdKsZZT
C+1J+9JR5gNfAgEgAASAABAAAloEZErXyHpFpgCvyIim2riSOyz21JO61g68
E+toLsk5HjVjArnHZZARDEmUUsDYdsstDDm9kGKqbLD/kRqtVTM7+ekh8l0i
GS0c6Tw98VRWcX0rgqNi4avSW/FuXfZDH27rtLOgVViQ6G1DrhqlkSxzr01P
0YbMRZ9qBFFY2CTeetbQLu5oKco+tftycUN7W9Wf6TOVk76DbKMSzhdWtyES
YW3u2RQ3W9VKn9xP3BLScsobRBiOiQWN1bl7o4fKJBRjlbW8SP6T+/fZ3+08
+79HlQ3NIhTHEWF9zjJnxdyzsVXQ0ox7T2rbxJLWirxz8T526vrSgJJttkx9
lZFl1LbrBUW1fCGCo6LGx1lps+0UD/R7ajyHRWsGo5fZHIbGxpBE6WIK47GC
VQ48Fps5HIKBfO+8PNwu6KJAkp/M0ZzWJbbuLGml3gu0z1Q4uWnBMRAAAkAA
CACBAUeAULrcz5bdFOFPN0yhfhY/2HF+YFiovYefQ0jC3kIRVpHuMFJdTwYZ
wZBEqTBYo+bvfoXXXds0drQ6f8WZo+xHO3vNPVaLvvx97lQPiykeFs4z/jVG
se49rYVmToFnajHJyytp20IiI6cFLQhet3KyBXGVek7XzH5G6mM+/2Gi3zdq
2UcvFEycku+jzemhWhO6VrMyhUheqqvX4l2luPjhHnffVQcr0PK9cwezOSxu
2M4ypL347PKYSLfYHUdLxUjZYVeurI4jglKq8YbbqUEB/raec6dFrokJmW4i
L52xytQAiQt5FtsL0Y7CtLXLZgYGfzsn3GtBBO8rWVmjA7Y+7WjOP7ogLOgb
38VrLlVLBLdjvpE5nR4Ui/4qGUP8wYF4z7nhM+N2Xa6TinKTxsjVWM+MZzCD
zaH1sgwXQ2NjSKLGSGG8y99lk7smPGfuFI+xc1JzKZ5j0JPvtZc/jjzXjOQt
s9O4Qwd7H3oh/esv6audPn0WMUwNhP52gPOBABAAAkAACPRvAoTStZj4cxkm
OO1J0q90Rn8UdaEVe7SSmN9SiFEGGcGQpLpc84A71GPLsdK2jsbCk7sSpk4e
p5nK/JBXYQ/ZQlPfwxXStqy1rgrtqLRZpXRPL/eNOFMlrLm2YBrFRLJm6Yr8
h0ReEKK5i2y0NpcilK74SvzHbMuZJwXirFWfsC3dj7WIr6/5lM1lr8kRYYXr
XRTzuINcUvIw8bXVToSwHrUoQ4gXHYr4XHO6Tlm0XlVWniy3UKa3+Jke2t7k
frEiu02QFap6t4m3/Pc2NHvjFGM2hx4U01Xq0QIBlme2IRdBc2LHq8h023h6
MxTwVTUle1n+JUNjY0hSZdjlgMl4mgzpyPeBl43tku6gqocYShpmDs7rd2/d
EPKFOpZdmURq6l2qBucAASAABIAAEPhwCMiU7viUUpSfSaN0ecP8kg7cKal8
LWxtqXteI0Dxoo0ub0npyrib2YwJSvj+QnGzuOGP5GBSQAWd+KCzkDd6awGK
3om2UmkvtV9lKq2zVdAmbc+Nc1LFEqhPoNMHQ+NuSpDrIRytM9VK1+OEQJy1
eijb0i3jtfjmun8Mt3TPaMaq0u1VEZ8jAn+sxOuPRpgScsSKt/xccUdnW82D
o7s2ezjbGGtoFLoqa5VO/pNObxH2dHZKURRFFB9M+kZalhYwiM0AiuEq0ry4
zGbTkMxm7OkGddvorvEMZhBK+t22Qybju610e+9lizUXEepoeLqGCt8DASAA
BIAAEAACLLYseuGf8dkdWMFqR7V+VaExtk+80Y5VXksJ9Pe1nj5n6rbbfOwt
K12F1Bs7cllWA17942zVk1kLu92VXddeoLeQNyoxH0WzI6mWI5UpXexeRvqt
Jpyft8eV6hwVBPLBkMjzQvT+0klarNRK1z2juf3aKk2l20KhdI/IlS4hUgdb
e3sn7D+WV9+BN99OCf1MHQFMXWWyPV2OaZUuIbirTwa4ymI/psj/dR81zprF
ZgAlk+nUV3VRusGnGjXaRneNZzCDQ+9lhcqnUZ9EKkNSF3qqMQOT0jWy2Uz1
FiYdeUWevfGy8aSt2ajgoCIwXWUkHAABIAAEgAAQAALMBAilyzGetPmPDrz0
4Pyhao2luIwQdnjRJleFsDMNPF6HaihdI+uEayh6bdXkrkGuDEn0CkNtrpHN
5hsocn7pROXJFuN+KkEbT7hpPpdnsNB0zm9V0tZLK13oohcyF1oPcYg/VCYW
Pj3opnqsrzGrqrZHboaJU3Iuyj8coRXtoFK6qvNVc7qM0QsaZVnzEnPbNYYc
1FVWAlGVRT6g01vcL1ffFWGlSZ5aEcbEtfSgmK7SjF7gmHZRupT+YjCe3gwO
g5flGTI0NoYkemMYle7YtZdR9PpaWfyJ2oN05Mne4bDYPfHyR2Gnm5CHyydr
jq/MHJzXpUL0Ar0TtcjDn0AACAABIPABEpApXRbb2mZHvlAqLMj8JSY2ekbI
0pjk39bNI9bTNXHaniNGik8nzfb1m+jm77r1VovGvB2HNSIopUbaVvBbeFi0
T9xmH2U0KtH9MCSp9YEauvHEpd8f+fXfUfMdPH3tApevv1yNdOSvVK4bwGJz
Pom60Czl3/x1pUdgxKy4bQHTiKgDJgvNXMOvNkklL6/u3TZvfsS0oGjfZZt9
ZRaSVZqJ7ZL0F4jgfsqkMWpjaLtP2doLzReWkWZeiSAEZZyuKgeV0uWwOLI3
0krOrYiN9liYnPGc9EbaqNDVR/cujo1w9PSd5Lsg7mwl2n4rUh3qSl1lWtsI
qvR6a8y8HUUSrDFvd+IKr6Bw98hVSxNiRspDPOlBseivIjMk5LK20u2+8fRm
MHlZ3pYYGhtDElU7lOFlUrosc9+k53jHsxMxETE+y7bMmSqPfqEn30svD7f1
yXwtefQfnmYw92Dvg7I30l7CG2mMd4TqloQDIAAEgAAQ+AAJKJQuhzXcZlxc
+rkntQJEiktaqx5dTQx1lsWMWn4VsTuz4GWTCMUwcWtzXdHDk/M0nt3zvgzd
90dlqwRHBDX5ySHk/SYYkihYm9gv3Hom9ymxopkU7Wgu+fPs2rlOGtOx5q5+
++6VtkgwKcKvfrgjWF4Wo4VfuXokZd543iREO6WYqL4s94cQYo0FbZXmsj27
Da/IiCGFBVNYKOtQZevpouUpc1STzbqULpszyDbqu4vPXokwpL3+4YVf3Ccp
IoONrMI3XiwobxFj0k6sg1+efyUxzIVYrkH1oa4y6QTVmYoDer3F5hhbBS46
fLewoR2RSsWC2oKr28arxBMNKGLKn+YqbYZdlC6r28ZzWLRmMHqZqDtDY2NI
oiPJqHTZ3M/8f75UJhDjqKDm0Y+KNk9Lvpde/pvn7gIJ//QSB63HJsQqY6VC
WGVMfbNo3wt0zoXvgQAQAAJA4MMhoFK60EnoT8DcbcmdVuzVpeDJ3XiVDfpj
INADAsYTYveVI83Z341WjUn0b6hwJhAAAkAACACBD50AKN0etQCj8TGpJWJJ
9fkg+Xq0PcqkB7oHLvmgCBjbLt5f2iEqPuJBCmj5oAhAZYEAEAACQAAI9I4A
KN2eilRj69C1aYkTRn048/9Q03dOYLRfXFryt1aaL6L1tMX27pfindcdqgkE
gAAQAAJAoA8IgNLtA4ggAoAAEAACQAAIAAEgAAT6IQFQuqB0gQAQAAJAAAgA
ASAABAyTAChdw/RrPxxUgUlAAAgAASAABIAAEHjHBEDpDkCla2QZ8/2N+8nB
VhB5+Y4JDCzyxlbzVu3aZP31O/5N6V5xJs5LE/cnu1Nt2a3t3DF+S1KT7PXe
zlD78gF4p0MVgAAQAAJAoNcE3qrSNXeakXzlQQ2/HZEI6stzznxn/dZXSiLW
NEWaz84i7wHRT8zou45WayHbXjcCuTSZODWthN+cv95dtf1y9yRLVzM+tgv0
CvP7vMvGe13PlH3DHbY6B/lL/h+SuZC8lxtDUm+NpDGGOtu3Q566rG4Z1vVk
YnmQYnF76XEfG/ILbX3o5b5xypDYqxKsy/ZvVDeLif2a31+ibU8PztBvO8Ou
TOAbIAAEgAAQ+PAIvEWly/1s0TW+tOHyj/HTvYNcgpfMXzhXb9HT077ffObG
p1jDiX9/rO4p+4kZPa2RuiLqHN6K3hruGHld9KaTfzhca6NjdbndvD2YN1+g
yNZkrKvlVC/rwD33cS2ly2FI6qZVFOXqn8NbIa9wsbXVhlt1Ujz/B0+N3VKG
T+CEff/r5fziBqEgezNbz2GDuduSu62S8pOzJpBlLofVp17uE6for3SJffgc
152px1/fSBj11sfMvWon+rcoOBMIAAEgAATeMoG3qHQtJu16gdQcchzx7voM
k2m/Psaa0kPGkaj1EzP6EsJb0ltG3Gm2blM+otLWJJ76V6TbSldeirFN4k1M
W+nqTOqRhfrXRXHmWyLPYo/lrLrxqrnuVQemoXS/9ow6W/m64k5q0lqfwLk2
39oP0cs7sm38JMXbZpLnxRVV6Gsvcxj8pY9TuqV0WWzu0IAjpVjLqYX2WjvG
6VMWnAMEgAAQAAIfHoFeKV3u32d/t/Ps/x5VNjSLUBxHhPU5y5yJOaTB/kdq
pIrn0Ir/YQWrHIgkI8uobdcLimr5QgRHRY2Ps9Jm26kflw+yjUo4X1jdhkiE
tblnU9xsSZuQjXSenngqq7i+FcFRsfBV6a14N1IqoQAsJux8jjacdFeuccts
xvfZz8pftyNSXMyvvnPqB1fS7Ncgm8gNZx9XtiIYjggaXvz5R6q7IjqQOyz2
1BNiv+JOrKO5JOd41IwJXXpcbTOIVkVtvIVN4q1nDe3ijpai7FO7Lxc3tLdV
/Zk+U2EJbVkaemu4rdPOglZhQaK3jdwSY6ugpRn3ntS2iSWtFXnn4n3sulio
pfCYHkMz+ov7iVtCWk55gwjDMbGgsTp3b/RQmRSjIN/JTw+xlN1gtPWS334M
yokhifbW7Tfkic17S1qpNu/lDp2T/rgxb8PsBbvrUJLStbZPLa2/nWQ1Wstf
uv4099r0FG3IXPSpxgRwj71M13oVZlA6RT7m3Bsk9zhHS85+5LLy59sVryWY
mF9193EtTope0N16h9sFXRRI8pM5MK2r17BHV2uBTIAAEAACBk6gV0qXCIpF
OwrT1i6bGRj87ZxwrwURvK9kP6yj7Ec7e809Vou+/H3uVA+LKR4Wzi5/l03u
ylQa/uBAvOfc8Jlxuy7XSUW5SWPknRY3bGcZ0l58dnlMpFvsjqOlYqTssCtX
lqGZU+CZWkzy8kratpDIyGlBC4LXrZxswdXQN+a+SWXYqyMR/6fymQ4zsNy0
JdP9wzyX7TpfjYhL0p3l0b2ckJ+eIx1ll9YsjHL1j5q7vxAj9cSDHecHhoXa
e/g5hCTsLRRhFekOIzX7kq5m0BpvNStTiOSlunot3lWKix/ucfdddbACLd87
d7CsCnRlqZWumf2M1Md8/sNEv28UcnZ0wNanHc35RxeEBX3ju3jNpWqJ4HaM
ro3cTHjO3CkeY+ek5naZTGXy14iglGq84XZqUIC/refcaZFrYkKmK568U5Cf
8a8xCn/R1avvlW5/Ij/Y+9AL6V9/SV/t9FEP7VhsjvHEZcdevcqIdTIeEZZK
UrpGY+N/b0WrCx8VNQiErU1Fd47FuCkGMxrNXtXalQcmTsn30eb0UO0J3R56
mZahotl3V+kaWS36by3e+uTU0uiomQu3/pTTKFXdX/q13o8jzzUjecvsNAMz
lNVnhgOpQAAIAAEg8IER6L3S5Wd6aEk9RZdD/fBardKI03hmG3IRNCeW2OyU
y16TI8IK17soZmoHuaTkYeJrq52M2BxT38MV0rasta4aIYyafdvgmftKsLrd
gVodvD5mcExn7CrAOq6sdDBic/+18nY7Vrx5ukKOaE1HkdvHR1EXWrFHK2Vz
1arvu5pBbzyhdMVX4j9mW848KRBnrfqEbel+rEV8fc2nmlVjsTnksuQMTy/3
jThTJay5tmCaKrKW+8WK7DZBVqjqlR3e8t/b0OyNU4y7ZKgyWHVAKVno/cVh
jVqUIcSLDkV8Tj27Rk1eVZz8gFwv+TeUZuhM0spW/mf/Im/m4Lx+99YNIV+Y
kYZGZt+GXmkqz4j+x3AOS1Ppms472Yi/Ov9D/HQv7/GzlybeacYbz/vpsfLA
kMgLQjR3kY3mOFDZACjxMniZnmHPlC5vxMZcCfIw3l6hU0n3l76t19gu6Q6q
ekRAgqmsI2VjgC+BABAAAkDggyTwnpUuxzQksxl7usGFx2Jbumc0Y1Xp9qq4
3hGBP1bi9UcjTNm80VsLUPRONNNSRGPt06rQV0dc5JPK6j6PWm9pdu0c1ojA
/1Th9UfCTdmWbhmvMVJ4MaknJqT5ML+kA3dKKl8LW1vqntcIULxoI2G8qrvt
agaD8Wql63FCIM5aPVRWuvjmOkL30JclM76zVdAmbc+NcyKHcBDGd3ZKURRF
FB9M+kZalhYwSG2hylTtAz00ENlfHBbbirf8XHFHZ1vNg6O7Nns422jqaWry
DPWSY6Q0Q2cSyQWqevV/8tzPIs+9bLgYIB+ZaChd7j/isxE059/jFILVZMpP
eZgoc6ENVU1VVSYOhsbdlCDXQzgaX6quosSrdTuQ7koGhor8KTOkj16wdD/G
xyrTJytHR6T7S+/Wa7HmIkIdya2qJhwAASAABIAAEJAReO9KN/hUIyYXi5bu
GS0USvcIoXRHJeajaHYkw4TWyHkp1VjlgWBTbUlHrbe0unaWeUByBd5wNNKU
belxQoC92G9H0RNzjO0Tb7RjlddSAv19rafPmbrtNl9hvFJVUJjBYLxa6bpn
NLdfW0VWugxlyYzH7mWk32rC+Xl7XNVYZKOF6pMBrrKIkSnyf91HjdOa51Za
q8nKyGZz11fBtECZqv2lyGSwtbd3wv5jefUdePPtlNDP1LGhFna7K5GKAyqS
8luOoV6KE/rsjbT+T94mNAt5I8VJw5I3nVKsLXvjl8M5nyy5LsEL18sC3wky
Y1aeQ7DbekzPD4k8L0TvL51EHoCpPd5NLzMwVORJrXRddz7C1NOuZDkrG9Ae
dFAOaLWT9Gi9xpO2ZqOCg4qwb3XV5O0H/gUCQAAIAAEgQCLQj5QuY/TCnN+q
pK2XVrrQRS+Y+v1WidWk+CjegCHVUC+la+z4w/9Q5MZ6Z2Ni/vgRijyIm9z1
6SqH0BB40SZXRZJp4PE6VGNOl9IMU1rjVUpX1VsT01ryOV2GslTqc4hD/KEy
sfDpQTdFuAL3y9V3RVhpkqde0pZEiTDAaOzayyh6fS0RLqJKUpUl/6ar0lWe
ac1LzG3HClY7qgSWxbifStDGE26awS0M9ZJnZWSdcA1Fr62aTDZDZxLLzMF5
XapWbED/Ik9hIW+orRsRxS7/TF2T0YQ92//vsZNsTdicQe57ivCOKysd5RwG
e+wtwvmHwnR71sQpORflH45QxbSovdkDL9MzVGRL6S+jcQlZJF1OkrPyJlqc
OKPry2r6tt6Pwk43IXotwatsnBoE4EsgAASAABD4kAj0I6XLYXFkb6SVnFsR
G+2xMDnjOfmNNNfwq01Sycure7fNmx8xLSjad9lmX2VEL4tt5XqoFq1MV00U
kVzIoHQ76+4dXLow1iNmW/rTdrzujLdsctTYZtWZ5k7B4+OLI6M8Y7/7PrtO
9caMidP2HDFSfDpptq/fRDd/1623WjTmdGnMMKMznknpMpRFVp8mtkvSXyCC
+ymT5K/TjZm3o0iCNebtTlzhFRTuHrlqaULMSHJgKEnFkijJpIC5b9JzvOPZ
iZiIGJ9lW+ZMJeIiyGURC5qS53RHha4+undxbISjp+8k3wVxZyvR9luRRMi1
Qlh8EnWhWcq/+etKj8CIWXHbAqYRGTLUS3HhiKCUGmlbwW/hYdE+cZt91F7m
sOiTBnsflL3v9VLjfa/+RJ7aQiUrou4a0QsclvmMZX+K8IZb68P9J3jHp+S3
SUr32SvXFVFBpjiQrb3QfGEZaX6dJPW662Vahso8KZ1i5rr4rgivv524JMrF
P8IvrQBVvXbGCU0pQyU1t7bEL5geEOGX9lidpE/rHW7rk/la8ug/POVTFwoC
ZKpwDASAABAAAh80gX6ldNmcQbZR31189kqEIe31Dy/84j6JFIT6latHUuaN
501CtFOKierLcn8IUS448HV4Wh1WusdfvmSBZs/HoHSlVU/yywQIJhGU3jkS
5qpahZf7qefm9PsvBSgu5lflFNZJsQdximfBll9F7M4seNkkQjFM3NpcV/Tw
5DzVY2IGM6iNZ1K6LDZtWdrq02V7dhtekREji+7lGFsFLjp8t7ChHZFKxYLa
gqvbxuurCbif+f98qUwgxlFBzaMfQ2yNGJWukVX4xosF5S1iTNqJdfDL868k
hrlouMDc1W/fvdIWCSZF+NUPdwQTGTLUS+k43peh+/6obJXgiKAmP1lmhs4k
Yg2vUiHFGl79hjythaofIC2ly+YYjw9be/ZJtRBFxS1FN/b5TNZYtEHJRKk4
VfmwZevpouUpcyZSndM9LxM5UDNUlUvtr0G20VuuFdd14FIp2tby6sndAzOV
cfaDbMLXZuaXCxBciov4tU/u7vNURuDobL1/89xdIOGfXuLQdcqfqrIqI+EA
CAABIAAEPkwCvVK6/QXZ34JP1mIvtnuSZLG616c2Ukss0veRvJGb8hDR1UCa
93vIF/bADPLlcAwE+oyAuduSO63Yq0vBk7txU/RZ6bruvh4XZDwhdl850pz9
3Wh9B2/Ut3+PDYALgQAQAAJAYKARMASlO87jeBNalmbTnc6PSel+7ReyZcOc
4BBH77BZK/dfb8Abzi79p/pFK7q+sydmDLTmQld3+L7fETAaH5NaIpZUnw/S
tZryQGmExraL95d2iIqPeJAiZAaK8WAnEAACQAAIvCcCBqB0x8Qeeo09/dlH
n4W0VJQZlK7xpPj9j142E09dEUFd8ZWD6yfy1LGnqhy0D3pkhnYmb20ybJDn
3mKtXevkm9dJK3fMNKhpv3eGtP8XZGwdujYtcYI+ob1vreH1JaXRfnFpyd9a
qV557Heji76s7IDwCBgJBIAAEBgABAxA6Q4Ayv2gSx7lZDHDZ4Jbl88Mjy8N
RglBSwACQAAIAAEgAASAgAYBULoaOPqBJAV7gAAQAAJAAAgAASAABPqGACjd
vuEIEhkIAAEgAASAABAAAkCgvxHoT0rXyDLm+xv3k4OtINztHRMYWOSNreat
2rXJ+uv+di9p2GPivDRxf7K7cl0tJoeO8VuSmmSvXGaL6UwYlQEBIAAEgAAQ
AALdI9CflC7DW2K96P4nTk0r4Tfnr3fXcy1SDb1CWe7HdoFeYX6f616NQZ4V
d9jqHET++tdfSOZC8h5XDEm6zaC0rWdfvh3yb6UKxJICxeL20uM+NuQ3k/rQ
y33jFNKuYDo4mNiv+f0l2vb04AzFRnc6zu+Zi+EqIAAEgAAQAAIfJAGDV7rD
HSOvi9508g+HU2+O2n2vU29FwZCPyVhXy6le1oF77uNaSpfDkMSQYZ8nvQ2l
azL15wJcIfCJ/yE3QpVrEjMk6aiauduSu62S8pOzJpBlLofVp17uE6for3SJ
necc152px1/fSBjVnZXydLDq3pAX5DUQAAJAAAgAAYMkYPBKl80x4k6zdZvy
UZ91/N1WunJFYmyTeBPTVro6k96NmnkbSnfw7PRypDBp7iyrqV7Ex8VlqHJT
YoYkxvrKtv6SFG+bSZ4XV9yWfe1lDoO/GI1U2NMtpctic4cGHCnFWk4ttIet
v/TBC+cAASAABIAAENCPQC+V7kjn6YmnsorrWxEcFQtfld6Kd7NgsS1sEm89
a2gXd7QUZZ/afbm4ob2t6s/0mYp5OO6w2FNP6lo78E6so7kk53jUjAny3l1D
bw23ddpZ0CosSPS2UaRaBS3NuPektk0saa3IOxfvY6dLEzA9hjayjNp2vaCo
li9EcFTU+DgrbbadKryB+4lbQlpOeYMIwzGxoLE6d2/0UJlQHux/pEZrVdpO
fnqIpYw1bb3knmBQTgxJtF7sN+SJTW5LWrtuw2sa8vvrjqygMRQDRIYk2vqy
OSxzr01P0YbMRZ9qxI302MscFjVDhcGUTjGZ9utjrGlvkNzjHC05+5HLyp9v
V7yWYGJ+1d3HtTj2cPlkxdyzsc7WO9wu6KJAkp/MgWndPhuUUrQ9pgYG5QIB
IAAEgIABEuiN0jVzCjxTi0leXknbFhIZOS1oQfC6lZMtuCy21axMIZKX6uq1
eFcpLn64x9131cEKtHzv3MEygoMd5weGhdp7+DmEJOwtFGEV6Q4jiT5JrXTN
7GekPubzHyb6faOQs6MDtj7taM4/uiAs6BvfxWsuVUsEt2N0bf5kwnPmTvEY
Oyc1t8tkqqws/MGBeM+54TPjdl2uk4pyk8bIRcaIoJRqvOF2alCAv63n3GmR
a2JCppvIfT/KfrSz19xjtejL3+dO9bCY4mHhPONfYxT7StDVq++Vbn8iP9j7
0AvpX39JX+30UQ0VCG8OXXZL3Hwx1NFx6EjtfTcYkhiEiIlT8n20OT1Ue0K3
h16mZdhDpWtktei/tXjrk1NLo6NmLtz6U06jVKV09Wu9H0eea0byltlpBmYY
4I8OCFAgAASAABAAAu+MQC+Urqnv4QppW9ZaV4UKVHfJhNIVX4n/mG0586RA
nLXqE7al+7EW8fU1n6rPUdTwo6gLrdijlQ5E7y5XuqeX+0acqRLWXFswTRVZ
y/1iRXabICtU9coOb/nvbWj2xinGXTLsKpUoJ+fUqvMZ9cIAACAASURBVJrI
gWe2IRdBc2Llu4yOWpQhxIsORXxOPbumV/QCuV59rnT7F3kzB+f1u7duCPlC
GZwgqy9v9Lrrpa+aBJLON5ig6GZ6oJNKoTIkMbX7IZEXhGjuIhtt3cyAl8HL
9AwVNlA2G/o5Xd6IjbkS5GG8vUKnkqZ79W29xnZJd1DVIwImFF0bOXwDBIAA
EAACQAAIUBHoudLljd5agKJ3oinWUVIrXY8TAnHW6qFsS7eM1+Kb6/5BPHfm
DfNLOnCnpPK1sLWl7nmNAMWLNrqolG5nq6BN2p4b50Teopa4vLNTiqIoovhg
0jfSsrQAfXYAppQsmhqIYxqS2Yw93SAzg8W24i0/V9zR2Vbz4OiuzR7ONpp6
mk7p0tZLzp3SDJ1JVD4bMOQJ483Gm81as/tJO1qdMV35RpqiUgxJVAOYoXE3
Jcj1EK1MlGdS4qX3MgPDnildS/djfKwyfbJydERSunq3Xos1FxHqSG6qZgBS
GAgAASAABIAAENBJoBdKd1RiPopmR1KsA6pWuu4Zze3XVpGVrrF94o12rPJa
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

--0000000000001b239d05bb8c7d82--


--===============0709792741537790691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0709792741537790691==--

