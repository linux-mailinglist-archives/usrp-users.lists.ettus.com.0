Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C3BD0A66F
	for <lists+usrp-users@lfdr.de>; Fri, 09 Jan 2026 14:26:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62967385E8E
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jan 2026 08:26:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1767965200; bh=TCMi0ghcdpwMTY7RnW35H7g+vP71+NEx0vuXSJejSxE=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=u05wvttUNYPhHtX9nHXMofhJgqVsAOZl19n9Gh230vrJHWlx6HVEMUa2P4Pm8JJa9
	 2ASDStHcIZmM1ipwFTHAtcWj2uKQW3SFxXmmuF4z9D7MSEV8JUBPEEbHWsjA3mMzBh
	 Enye0U60ep12SEZ/DJSo/NS4N8Xg+hWON0puiaU+afxn3rHQfy7eZ0Bor8WfXrSvLR
	 6PyXg9OmooCnhcoexhRcNtnnlEFBeA8cOaWfPMlMeYFGue5xiCLw+uljLYykQ55VmI
	 VvV4UQICfn9X66d9a45cA5XzdKPSHtPjbVxLzqvKScSJrtHDfKhGC2jKHd5Z99Kojp
	 EWR4A+kzMIDrA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EB09385E08
	for <usrp-users@lists.ettus.com>; Fri,  9 Jan 2026 08:25:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1767965142; bh=Cd9YVCndXqlcVvaVdbpNYxUkG5rzGtfnQTACjkVd/8U=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UCfXN3egFFVAgSgklZtaPQCU9icx7i86Dm6g6HluZRz2ta6mbzXifsTdO/AiR16WD
	 ljTD9gQ+/IkZU0p55iMUBpbdeHLgS8qFiJBnZV3iaHTTGk8NTyUyQDliaCebtiU8M7
	 5YmGIssunRSE5KbzhXVuwUIH5LDhX7IFUdV5dtiJJ3sN80z1OEHvaTUQLdoBZgxnea
	 DC2dgXKJwabYox4MdJ8dFsx4ztaSyzJ22eXWRsijklIV1IoSxt7s3pI5lELsI39XoB
	 vpS3V1d5BQ74bxCI69XrMtWN/domruKKlNwu12bl5097IOUnj20x6quk3gb76QJuju
	 Eg5hKHsYLnaWw==
Date: Fri, 9 Jan 2026 13:25:42 +0000
To: usrp-users@lists.ettus.com
Message-ID: <pNQcF48TDNeGtbogjZPLlXL9t8l1IA1CYBJptiVV9cc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 0o0PDbCMb6qYHRUsH86y559fXU0ZyIgIFhgvnL28tc@lists.ctbirding.org
MIME-Version: 1.0
Message-ID-Hash: BGSX2V3MHPOUGW2EQ724GTPZEPA3GSON
X-Message-ID-Hash: BGSX2V3MHPOUGW2EQ724GTPZEPA3GSON
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [UHD 4.8 / X410] YAML inheritance error when adding custom RFNoC block + need updated tutorial
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BGSX2V3MHPOUGW2EQ724GTPZEPA3GSON/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============7066890661424493809=="

This is a multi-part message in MIME format.

--===============7066890661424493809==
Content-Type: multipart/alternative;
 boundary="b1_pNQcF48TDNeGtbogjZPLlXL9t8l1IA1CYBJptiVV9cc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pNQcF48TDNeGtbogjZPLlXL9t8l1IA1CYBJptiVV9cc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Yunxi,

1. As of UHD 4.8, the rfnoc_image_builder resolves the path relative to t=
he path of the image core .yml files. This means you have to create a cop=
y of the x410_radio_base.yml and x4xx_x4_base.yml files and place them at=
 \~/rfnoc-mymodule/icores/yaml_include/.

2. Absolute paths are not supported/recommended. Please use relative path=
s.

3. We are currently working on providing better documentation for generat=
ing custom RFNoC IP. As a starting point we did the following:

   * We created the https://github.com/EttusResearch/rfnoc-oot-blocks rep=
ository to give an example of an out-of-tree module.

   * We improved the rfnoc_modtool. It now offers an interactive mode for=
 generating rfnoc blocks:\
     $ rfnoc_modtool create mymodule

     =E2=9C=85   Created new module template at location /home/user/rfnoc=
-mymodule...

     =E2=9C=85   Renamed symbols to match module name ('mymodule'). Modul=
e creation complete.

     $ cd rfnoc-mymodule/

     $ rfnoc_modtool add myblock01

     Block descriptor file None does not exist. Would you like to run the=
 YAML creation wizard? (y/n) y

     Choose NoC-ID (e.g., 0x1234ABCD): 0x1234

     Provide comma-separated list of additional clocks (e.g., 'ce', leave=
 blank for none):

     Specify control FIFO depth: \[32\]

     Specify clock domain for control interface (leave blank for default)=
: \[rfnoc_chdr\]

     Specify data interface type (axis_chdr, axis_pyld_ctxt, axis_data, n=
one): \[axis_data\]

     Specify clock domain for data interface (leave blank for default): \=
[rfnoc_chdr\]

     Specify number of input ports: \[1\]

     Specify number of output ports: \[1\]

     Specify input data type: \[sc16\]

     Specify output data type: \[sc16\]

     =E2=9C=85   Generated rfnoc/blocks/myblock01.yml. Open the file and =
make any necessary changes before proceeding!

     =E2=9A=A0    Skipping block generation -- re-run 'rfnoc_modtool add'=
 after editing the block descriptor file.

     $ rfnoc_modtool add myblock01

     =E2=9C=85   Using block descriptor file: rfnoc/blocks/myblock01.yml

     =E2=9A=99=EF=B8=8F   Parsing block descriptor file rfnoc/blocks/mybl=
ock01.yml...

     =E2=9C=85   Parsed block descriptor file rfnoc/blocks/myblock01.yml.

     =E2=9C=85   Added gateware templates to fpga/mymodule/rfnoc_block_my=
block01.

     =E2=9C=85   Added testbench templates.

     =E2=9C=85   Added C++ block controller templates.

     =E2=9C=85   Added Python binding templates.

     =E2=9C=85   Done: Added block myblock01 to module mymodule.

   * We improved the rfnoc_image_builder: it now performs additional chec=
ks on the RFNoC image core .yml file. E.g. if there are invalid connectio=
ns, it will generate appropriate errors. Also running rfnoc_image_builder=
 with debug logging might be helpful in case you see issues: rfnoc_image_=
builder -l debug (=E2=80=A6)

Kind regards,\
J=C3=B6rg

--b1_pNQcF48TDNeGtbogjZPLlXL9t8l1IA1CYBJptiVV9cc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Yunxi,</p><ol><li><p>As of UHD 4.8, the rfnoc_image_builder resolves =
the path relative to the path of the image core .yml files. This means you =
have to create a copy of the x410_radio_base.yml and x4xx_x4_base.yml files=
 and place them at ~/rfnoc-mymodule/icores/yaml_include/.</p></li><li><p>Ab=
solute paths are not supported/recommended. Please use relative paths.</p><=
/li><li><p>We are currently working on providing better documentation for g=
enerating custom RFNoC IP. As a starting point we did the following:</p><ul=
><li><p>We created the https://github.com/EttusResearch/rfnoc-oot-blocks re=
pository to give an example of an out-of-tree module.</p></li><li><p>We imp=
roved the rfnoc_modtool. It now offers an interactive mode for generating r=
fnoc blocks:<br>$ rfnoc_modtool create mymodule</p><p>=E2=9C=85   Created n=
ew module template at location /home/user/rfnoc-mymodule...</p><p>=E2=9C=
=85   Renamed symbols to match module name ('mymodule'). Module creation co=
mplete.</p><p>$ cd rfnoc-mymodule/</p><p>$ rfnoc_modtool add myblock01</p><=
p>Block descriptor file None does not exist. Would you like to run the YAML=
 creation wizard? (y/n) y</p><p>Choose NoC-ID (e.g., 0x1234ABCD): 0x1234</p=
><p>Provide comma-separated list of additional clocks (e.g., 'ce', leave bl=
ank for none):</p><p>Specify control FIFO depth: [32]</p><p>Specify clock d=
omain for control interface (leave blank for default): [rfnoc_chdr]</p><p>S=
pecify data interface type (axis_chdr, axis_pyld_ctxt, axis_data, none): [a=
xis_data]</p><p>Specify clock domain for data interface (leave blank for de=
fault): [rfnoc_chdr]</p><p>Specify number of input ports: [1]</p><p>Specify=
 number of output ports: [1]</p><p>Specify input data type: [sc16]</p><p>Sp=
ecify output data type: [sc16]</p><p>=E2=9C=85   Generated rfnoc/blocks/myb=
lock01.yml. Open the file and make any necessary changes before proceeding!=
</p><p>=E2=9A=A0    Skipping block generation -- re-run 'rfnoc_modtool add'=
 after editing the block descriptor file.</p><p>$ rfnoc_modtool add myblock=
01</p><p>=E2=9C=85   Using block descriptor file: rfnoc/blocks/myblock01.ym=
l</p><p>=E2=9A=99=EF=B8=8F   Parsing block descriptor file rfnoc/blocks/myb=
lock01.yml...</p><p>=E2=9C=85   Parsed block descriptor file rfnoc/blocks/m=
yblock01.yml.</p><p>=E2=9C=85   Added gateware templates to fpga/mymodule/r=
fnoc_block_myblock01.</p><p>=E2=9C=85   Added testbench templates.</p><p>=
=E2=9C=85   Added C++ block controller templates.</p><p>=E2=9C=85   Added P=
ython binding templates.</p><p>=E2=9C=85   Done: Added block myblock01 to m=
odule mymodule.</p></li><li><p>We improved the rfnoc_image_builder: it now =
performs additional checks on the RFNoC image core .yml file. E.g. if there=
 are invalid connections, it will generate appropriate errors. Also running=
 rfnoc_image_builder with debug logging might be helpful in case you see is=
sues: rfnoc_image_builder -l debug (=E2=80=A6)</p></li></ul></li></ol><p>Ki=
nd regards,<br>J=C3=B6rg</p>

--b1_pNQcF48TDNeGtbogjZPLlXL9t8l1IA1CYBJptiVV9cc--

--===============7066890661424493809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7066890661424493809==--
