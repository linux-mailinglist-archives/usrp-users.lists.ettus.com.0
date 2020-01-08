Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 489D4134323
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 14:00:14 +0100 (CET)
Received: from [::1] (port=40836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipAwS-0001xL-Uo; Wed, 08 Jan 2020 08:00:08 -0500
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:44178
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1ipAwP-0001lN-HE
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 08:00:05 -0500
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 008CxNQf009656
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Wed, 8 Jan 2020 13:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
 s=unimail; t=1578488363;
 bh=V5ElyH54+GPopnEzK7txBFgf4CREFQCO6dD3wVcK730=;
 h=In-Reply-To:References:Date:Subject:From:To:Reply-To;
 b=NAPTZihh15+9HR573wDsxirn3b1pWzqtZ9tbATtPnEKrVTajMQVHP1zW+u1l8dFhz
 WFpSYe4d6WrtCphIYJz0wWZfbEcyN0aHNeTyMzEuPslnkeP5wnKiR+hGhEiE5PmTPP
 6quDTKPfL0MZ9ZiHI0RWFf9HwmXxrUsNrozz83uM=
Received: from 129.217.182.203 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Wed, 8 Jan 2020 13:59:23 +0100
Message-ID: <f579952b4ad7fb3a6457224d49fc6af6.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <CADRnH22jhRo3s-=URkd-bgtCHoqVAP3CzV2XGgtkbO21h2f=6Q@mail.gmail.com>
References: <0f08a6b07438bf71916006244562092c.squirrel@webmail.tu-dortmund.de>
 <640c149702f53cfe43d71b5da2255278.squirrel@webmail.tu-dortmund.de>
 <CADRnH22jhRo3s-=URkd-bgtCHoqVAP3CzV2XGgtkbO21h2f=6Q@mail.gmail.com>
Date: Wed, 8 Jan 2020 13:59:23 +0100
To: "Usrp Liste" <usrp-users@lists.ettus.com>
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: Re: [USRP-users] Building RFNoC Image with OOT Module on X310 -
 Module not found
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
From: Felix Greiwe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: felix.greiwe@tu-dortmund.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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

Hi EJ,

thank you for your answer! To make my error more traceable, I created a
new OOT Module and added the default gain block from rfnoc getting
started.

I also took your advice and looked at the uhd_image_builder.py script. I
noticed very strange behaviour, because my print statements suggested,
that the script did not include my makefile.srcs because it first edited
the path

/home/lskt/rfnoc/src/rfnoc-blocks_lskt/ to
/home/lskt/rfnoc/src/rfnoc-blocks_lskt/rfnoc and a bit later to
/home/lskt/rfnoc/src/rfnoc-blocks_lskt/rfnoc/rfnoc/fpga-src/ .

As you can see two rfnoc's here hence it did not find the makefile.src in
..../fpga-src. The changes (marked with fgr) in the create_oot_include
here seem to resolve the issue, hopefully helpful for other people too and
maybe even a major bug?:

def create_oot_include(device, include_dirs):
    """
    Create the include file for OOT RFNoC sources
    """
    oot_dir_list =3D []
    target_dir =3D device_dict(device.lower())
    dest_srcs_file =3D os.path.join(get_scriptpath(), '..', '..', 'top',\
            target_dir, 'Makefile.OOT.inc')
    incfile =3D open(dest_srcs_file, 'w')
    incfile.write(OOT_SRCS_FILE_HDR)
    if include_dirs is not None:
        for dirs in include_dirs:
            currpath =3D os.path.abspath(str(dirs))
            if os.path.isdir(currpath) & (os.path.basename(currpath) =3D=3D
"rfnoc"):
                # Case 1: Pointed directly to rfnoc directory
                oot_path =3D currpath
            elif os.path.isdir(os.path.join(currpath, 'rfnoc')):
                # Case 2: Pointed to top level rfnoc module directory
                oot_path =3D os.path.join(currpath, 'rfnoc')
            elif os.path.isfile(os.path.join(currpath, 'Makefile.inc')):
                # Case 3: Pointed to a random directory with a Makefile.inc
                oot_path =3D currpath
            else:
                print('No RFNoC module found at ' +
os.path.abspath(currpath))
                continue
            if oot_path not in oot_dir_list:
                oot_dir_list.append(oot_path)
                named_path =3D os.path.join('$(BASE_DIR)',
get_relative_path(get_basedir(), oot_path))
                incfile.write(OOT_DIR_TMPL.format(oot_dir=3Dnamed_path))
                if os.path.isfile(os.path.join(oot_path, 'Makefile.inc')):
                    # Check for Makefile.inc
                    incfile.write(OOT_INC_TMPL)
                elif os.path.isfile(os.path.join(oot_path, 'rfnoc',
'Makefile.inc')):
                    # Check for Makefile.inc
                    incfile.write(OOT_INC_TMPL)
                #elif os.path.isfile(os.path.join(oot_path, 'rfnoc',
'fpga-src', 'Makefile.srcs')): # Original
                elif os.path.isfile(os.path.join(oot_path, 'fpga-src',
'Makefile.srcs')): # Anders fgr
                    # Legacy: Check for fpga-src/Makefile.srcs
                    # Read, then append to file
                    # curr_srcs =3D open(os.path.join(oot_path, 'rfnoc',
'fpga-src', 'Makefile.srcs'), 'r').read() # Original
                    curr_srcs =3D open(os.path.join(oot_path, 'fpga-src',
'Makefile.srcs'), 'r').read() # Anders fgr
                    # curr_srcs =3D curr_srcs.replace('SOURCES_PATH',
os.path.join(oot_path, 'rfnoc', 'fpga-src', '')) #
Original
                    curr_srcs =3D curr_srcs.replace('SOURCES_PATH',
os.path.join(oot_path, 'fpga-src', '')) # Anders fgr
                    print('Searching for Makefile.srcs: ' + curr_srcs) #fgr
                    incfile.write(OOT_SRCS_TMPL.format(sources=3Dcurr_srcs))
                else:
                    print('No valid makefile found at ' +
os.path.abspath(currpath))
                    continue

However 30 minutes later in the build I got the next errror and again have
no idea what to do. My command was:

./uhd_image_builder.py gain ddc fft -I
/home/lskt/rfnoc/src/rfnoc-blocks_lskt/ -d x310 -t X310_RFNOC_HG -m 6
--fill-with-fifos

Using Vivado 2018.3 and UHD 3.15.0.0-124-geb448043


Erros are:

ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4
has multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and
bus_clk_gen/inst/clkout4_buf/O.
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net
radio_reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has
multiple drivers:
ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg=
[9][0]/Q,
and
radio_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].value_=
reg[9][0]/Q.
ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
ERROR: [Common 17-39] 'opt_design' failed due to earlier errors.
[00:24:46] Current task: DRC +++ Current Phase: Starting
[00:24:46] Current task: DRC +++ Current Phase: Finished
[00:24:46] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Warnings:           1304
Critical Warnings:  40
Errors:             4

Makefile.x300.inc:106: recipe for target 'bin' failed
make[1]: *** [bin] Error 1
make[1]: Verzeichnis =84/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300=93 wird
verlassen
Makefile:112: recipe for target 'X310_RFNOC_HG' failed
make: *** [X310_RFNOC_HG] Error 2


Again, I would be very thankful for any advice, I refuse to give up :D

Thanks again and best regards,

Felix


> Hi Felix,
>
> It's tough to debug your specific issues without seeing the whole OOT repo
> structure, including makefiles, etc.
>
> However I regularly use rfnoc with OOT folders successfully and have an
> example here you might be able to refer to for some hints:
> github.com/ejk43/rfnoc-ootexample
>
> I might suggest trying to check that out and see if you can build with one
> of those blocks first, then modify for your purposes?
>
> Also, one other thing to mention is you might have some luck debugging the
> uhd_image_builder.py to see where it's going wrong in your case (it's just
> a python file so it's pretty easy to add debug markers or print statements
> if you want)...
>
> EJ
>
> On Sat, Jan 4, 2020, 5:10 AM Felix Greiwe via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello again,
>>
>> has no one an idea? I have still not managed to get it working..
>> I would take any advice!
>>
>> Best regards,
>>
>> Felix
>>
>>
>> > Hello together,
>> >
>> > recently I installed the whole UHD/GNU-Radio Toolchain on a fresh
>> install
>> > of Kubuntu 18.04 LTS. I followed the instructions from
>> > https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>> > and used the Pybombs install.
>> >
>> > (I ran into a lot of problems there and had to install a lot of stuff
>> > manually because most of the commands were not working properly. Maybe
>> the
>> > Pybombs Tutorial Section needs an update?)
>> >
>> > Finally I managed to install it successfully and the command
>> > uhd_config_version -- info prints: UHD 3.15.0.0-124-geb448043
>> > (I also installed Vivado 2018.3 and added the License which seems to
>> > work.)
>> >
>> > After the install I wanted to validate it by creating an OOT Module
>> and
>> > OOT Block named noc_block_checkdevprocess.v. I did not edit the
>> Verilog
>> > Code because I only wanted to know if I was able to build an Image
>> > properly.
>> > (I ran the default Testbench too, which worked without errors.)
>> >
>> > The command to build my image is:
>> >
>> > ./uhd_image_builder.py checkdevprocess digital_gain -t X310_RFNOC_HG
>> -d
>> > X310 -I /home/lskt/rfnoc-blocks_lskt/rfnoc
>> >
>> > with "rfnoc-blocks_lskt" beeing my OOT Module and "checkdevprocess"
>> beeing
>> > my  custom block.
>> > (I also tried the paths home/lskt/rfnoc-blocks_lskt/rfnoc/;
>> > home/lskt/rfnoc-blocks_lskt/;
>> home/lskt/rfnoc-blocks_lskt/rfnoc/fpga-src
>> )
>> >
>> > Every single time I get the same error message:
>> > ERROR: [Synth 8-439] module 'noc_block_checkdevprocess' not found
>> >
>> [/home/lskt/rfnoc/src/uhd-fpga/usrp3/top/x300/rfnoc_ce_auto_inst_x310.v:=
22]
>> >
>> > and I don't know why.
>> >
>> > I also tried the the uhd_image_builder_gui.py which did not even pop
>> up
>> > until I uncommented the Line at row 149. I can see my OOT Block here
>> after
>> > adding the Module in the gui, but it prints the same error message as
>> the
>> > non-gui version.
>> >
>> > If you need further information to help please ask.
>> >
>> > Any help is appreciated.
>> >
>> > Felix
>> >
>> >
>> >
>> >
>> >
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
