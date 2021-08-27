Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF933F9301
	for <lists+usrp-users@lfdr.de>; Fri, 27 Aug 2021 05:42:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A504383E6D
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 23:42:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="I8z+Wm5c";
	dkim-atps=neutral
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 32D6F38411A
	for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 23:42:02 -0400 (EDT)
Received: by mail-ua1-f50.google.com with SMTP id x23so2706853uav.3
        for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 20:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qgWsX7IPHAninOOwHrm8dN14vak5dh1Dv1SLnY9Bp0Y=;
        b=I8z+Wm5cPyCu4L14cFssMW75k/l8h8JH0CVMS5PB4kNZSobV5Y1JDOLfsQSexIxN6Y
         OagHDDPZc52cuFHIFHVrEj2G4GSdbFHSzciybOpcGptg4phjjWO3eyNKgbYUhGwnIR/k
         h31VHjFUEQ4Vr3X27+5kaUWIXjBkeUSBl7aP13wp+ttQxCtZH/46jsq9zK161jsQr4/6
         PVjVceJLY3E1ThzgtrQTPSvhu8arAxDfWq+3GWH3/6U13KJ29A7q6hinYEIbVAL+alfF
         8/71qxqirQ2DXF7jvm4SvfEs8R5WO7w3QXMq5d3TbEX6K1LfywRaTRYzMyt2RC+J/PF+
         fxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qgWsX7IPHAninOOwHrm8dN14vak5dh1Dv1SLnY9Bp0Y=;
        b=gAvq2ugrtiO2SuFo5iSfZfDj1PbCl6x3V5NgDFyeU/vXfACk+4oY2RzYkIx3uj23gb
         Vxt4nd8ME0C5XJULFK0IZd76x8Fowza5bSck2ia5RpGhVcs514z3o58yVTeRWiH5lTFv
         ugGy+Z+7Oq2t/e+4G06W6wUr6v00RmY4oWEAHTU/xBA3wy4A7R59EL8qHJC2qEKNaQts
         aqotsGJmlfzP56a+z/qSaU5kT//ekYkdQesigG/dJjuiTdc4YJpGA7dwh6/XPS7AQwj2
         F8bgBkZ/64RhznGE8u50Ak59iGyAwHZILecvrNY6zC3aqFUjEnpXhJC0oiqDNAOIrIxR
         b1Sw==
X-Gm-Message-State: AOAM53283CUgo3FLOkbRcx3oI9xzGCzhd1MkTfPzZJdrtKsPa59FI7hB
	dZtEQ8RDeXDcnJ87uwVSdux8Y3YEmGo0ycHx2+304gBibEl/8g==
X-Google-Smtp-Source: ABdhPJykBK9V/UUeYP93aCzsvXFfu0KihJPcLl2JX3xy54st21+z5lled82eG7slIZs7g3IF/foKJXnBHUcS7LQE5u4=
X-Received: by 2002:ab0:7a57:: with SMTP id a23mr5302769uat.100.1630035721368;
 Thu, 26 Aug 2021 20:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com>
 <1603286005.133827.1629816455930@mail.yahoo.com> <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com>
 <1800716940.152466.1629819588887@mail.yahoo.com> <10eb8f95-de74-f86d-e638-2d519f35ed33@gmail.com>
 <983558461.158295.1629821292551@mail.yahoo.com> <1cb46b16-2f3a-eb92-a55e-a8b09a64370d@gmail.com>
 <1502691808.229735.1629837681660@mail.yahoo.com> <CAL7q81tixB=BxZvRuLuJcOq1KNFpALzumZjWr7tR4AAv_NQo9A@mail.gmail.com>
 <146269565.381604.1629901775157@mail.yahoo.com> <1773773029.528750.1629939559989@mail.yahoo.com>
In-Reply-To: <1773773029.528750.1629939559989@mail.yahoo.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 26 Aug 2021 23:41:24 -0400
Message-ID: <CAL7q81scnYg+HA5gV9D=Yt-4BfvocAn26SpeiqF5XZi3Ms9SkQ@mail.gmail.com>
To: Tellrell White <t_whit_87@yahoo.com>
Message-ID-Hash: OVZABCLFFRLMDMCHLAEJUWKSHKGZUQOA
X-Message-ID-Hash: OVZABCLFFRLMDMCHLAEJUWKSHKGZUQOA
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OVZABCLFFRLMDMCHLAEJUWKSHKGZUQOA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4189138620374301277=="

--===============4189138620374301277==
Content-Type: multipart/alternative; boundary="00000000000024c90005ca824430"

--00000000000024c90005ca824430
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tellrell,

Can you post the exact steps you are following?

Jonathon

On Wed, Aug 25, 2021 at 8:59 PM Tellrell White via USRP-users <
usrp-users@lists.ettus.com> wrote:

> From looking at the whole printout to the screen, it seems as though UHD
> functions as well as boost functions are not being seen, hence the
> "undefined reference" messages. I'm unclear as to why this is happening a=
t
> the moment. This is a complete printout below.
>
>
> tw@tw-virtual-machine:/usr/local/share/uhd/images/y$ sudo make
> rfnoc_replay_samples_1_from_file
> [sudo] password for tw:
> g++     rfnoc_replay_samples_1_from_file.cpp   -o
> rfnoc_replay_samples_1_from_file
> /tmp/ccXdJ5o0.o: In function `_main(int, char**)':
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x34e): undefined reference t=
o
> `boost::program_options::options_description::m_default_line_length'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x359): undefined reference t=
o
> `boost::program_options::options_description::m_default_line_length'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x3a0): undefined reference t=
o
> `boost::program_options::options_description::options_description(std::__=
cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&, unsigned int,
> unsigned int)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x3cd): undefined reference t=
o
> `boost::program_options::options_description::add_options()'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x3f1): undefined reference t=
o
> `boost::program_options::options_description_easy_init::operator()(char
> const*, char const*)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x45d): undefined reference t=
o
> `boost::program_options::options_description_easy_init::operator()(char
> const*, boost::program_options::value_semantic const*, char const*)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x488): undefined reference t=
o
> `boost::program_options::options_description_easy_init::operator()(char
> const*, boost::program_options::value_semantic const*, char const*)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x4d3): undefined reference t=
o
> `boost::program_options::options_description_easy_init::operator()(char
> const*, boost::program_options::value_semantic const*, char const*)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x51e): undefined reference t=
o
> `boost::program_options::options_description_easy_init::operator()(char
> const*, boost::program_options::value_semantic const*, char const*)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x569): undefined reference t=
o
> `boost::program_options::options_description_easy_init::operator()(char
> const*, boost::program_options::value_semantic const*, char const*)'
> /tmp/ccXdJ5o0.o:rfnoc_replay_samples_1_from_file.cpp:(.text+0x5b4): more
> undefined references to
> `boost::program_options::options_description_easy_init::operator()(char
> const*, boost::program_options::value_semantic const*, char const*)' foll=
ow
> /tmp/ccXdJ5o0.o: In function `_main(int, char**)':
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x817): undefined reference t=
o
> `boost::program_options::variables_map::variables_map()'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x877): undefined reference t=
o
> `boost::program_options::store(boost::program_options::basic_parsed_optio=
ns<char>
> const&, boost::program_options::variables_map&, bool)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x8a4): undefined reference t=
o
> `boost::program_options::notify(boost::program_options::variables_map&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x941): undefined reference t=
o
> `boost::program_options::operator<<(std::ostream&,
> boost::program_options::options_description const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0xa18): undefined reference t=
o
> `uhd::device_addr_t::device_addr_t(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0xa31): undefined reference t=
o
> `uhd::rfnoc::rfnoc_graph::make(uhd::device_addr_t const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0xa91): undefined reference t=
o
> `uhd::rfnoc::block_id_t::block_id_t(unsigned long,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, unsigned long)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0xcf7): undefined reference t=
o
> `uhd::rfnoc::block_id_t::block_id_t(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0xd3c): undefined reference t=
o
> `uhd::rfnoc::block_id_t::match(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0xeef): undefined reference t=
o
> `uhd::rfnoc::block_id_t::block_id_t(unsigned long,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, unsigned long)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x127f): undefined reference
> to `uhd::device_addr_t::device_addr_t(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x1ce8): undefined reference
> to `uhd::_log::log::log(uhd::log::severity_level,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, unsigned int,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, std::thread::id)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x1d0d): undefined reference
> to `uhd::_log::log::~log()'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x1f6e): undefined reference
> to `uhd::_log::log::log(uhd::log::severity_level,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, unsigned int,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, std::thread::id)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x1f93): undefined reference
> to `uhd::_log::log::~log()'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x207a): undefined reference
> to `uhd::_log::log::log(uhd::log::severity_level,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, unsigned int,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, std::thread::id)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x209f): undefined reference
> to `uhd::_log::log::~log()'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x2120): undefined reference
> to `uhd::device_addr_t::device_addr_t(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x2183): undefined reference
> to `uhd::tx_metadata_t::tx_metadata_t()'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x21af): undefined reference
> to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]() const'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x2e93): undefined reference
> to `uhd::time_spec_t::time_spec_t(double)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x2f47): undefined reference
> to `uhd::stream_cmd_t::stream_cmd_t(uhd::stream_cmd_t::stream_mode_t
> const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x3604): undefined reference
> to `uhd::_log::log::~log()'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x3666): undefined reference
> to `uhd::_log::log::~log()'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x36c8): undefined reference
> to `uhd::_log::log::~log()'
> /tmp/ccXdJ5o0.o: In function `uhd::rfnoc::property_t<int>* (anonymous
> namespace)::_assert_prop<int>(uhd::rfnoc::property_base_t*,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)':
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x3a81): undefined reference
> to `uhd::lookup_error::lookup_error(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x3aad): undefined reference
> to `typeinfo for uhd::lookup_error'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x3ba6): undefined reference
> to `uhd::type_error::type_error(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text+0x3be1): undefined reference
> to `typeinfo for uhd::type_error'
> /tmp/ccXdJ5o0.o: In function `uhd::rfnoc::block_id_t::operator
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >() const':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10block_id_tcvN=
St7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv[_ZNK3uhd5rfnoc10block=
_id_tcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv]+0x2e):
> undefined reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]()
> const'
> /tmp/ccXdJ5o0.o: In function `uhd::rfnoc::operator<<(std::ostream&,
> uhd::rfnoc::block_id_t)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoclsERSoNS0_10bloc=
k_id_tE[_ZN3uhd5rfnoclsERSoNS0_10block_id_tE]+0x2f):
> undefined reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]()
> const'
> /tmp/ccXdJ5o0.o: In function `uhd::runtime_error::~runtime_error()':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd13runtime_errorD2Ev[_Z=
N3uhd13runtime_errorD5Ev]+0xf):
> undefined reference to `vtable for uhd::runtime_error'
> /tmp/ccXdJ5o0.o: In function
> `uhd::stream_args_t::stream_args_t(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd13stream_args_tC2ERKNS=
t7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_[_ZN3uhd13stream_args_=
tC5ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_]+0x76):
> undefined reference to
> `uhd::device_addr_t::device_addr_t(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::error_with_option_name::~error_with_option_name(=
)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options22e=
rror_with_option_nameD2Ev[_ZN5boost15program_options22error_with_option_nam=
eD5Ev]+0xf):
> undefined reference to `vtable for
> boost::program_options::error_with_option_name'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::validation_error::validation_error(boost::progra=
m_options::validation_error::kind_t,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&, int)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options16v=
alidation_errorC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsI=
cESaIcEEESA_i[_ZN5boost15program_options16validation_errorC5ENS1_6kind_tERK=
NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i]+0x41):
> undefined reference to
> `boost::program_options::validation_error::get_template[abi:cxx11](boost:=
:program_options::validation_error::kind_t)'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options16v=
alidation_errorC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsI=
cESaIcEEESA_i[_ZN5boost15program_options16validation_errorC5ENS1_6kind_tERK=
NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i]+0x5e):
> undefined reference to
> `boost::program_options::error_with_option_name::error_with_option_name(s=
td::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&, int)'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::value_semantic_codecvt_helper<char>::value_seman=
tic_codecvt_helper()':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options29v=
alue_semantic_codecvt_helperIcEC2Ev[_ZN5boost15program_options29value_seman=
tic_codecvt_helperIcEC5Ev]+0x1b):
> undefined reference to `vtable for
> boost::program_options::value_semantic_codecvt_helper<char>'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::value_semantic_codecvt_helper<char>::~value_sema=
ntic_codecvt_helper()':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options29v=
alue_semantic_codecvt_helperIcED2Ev[_ZN5boost15program_options29value_seman=
tic_codecvt_helperIcED5Ev]+0xf):
> undefined reference to `vtable for
> boost::program_options::value_semantic_codecvt_helper<char>'
> /tmp/ccXdJ5o0.o: In function `uhd::lookup_error::~lookup_error()':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd12lookup_errorD2Ev[_ZN=
3uhd12lookup_errorD5Ev]+0xf):
> undefined reference to `vtable for uhd::lookup_error'
> /tmp/ccXdJ5o0.o: In function `std::shared_ptr<uhd::rfnoc::radio_control>
> uhd::rfnoc::rfnoc_graph::get_block<uhd::rfnoc::radio_control>(uhd::rfnoc:=
:block_id_t
> const&) const':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3u=
hd5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKN=
S0_10block_id_tE]+0xbb):
> undefined reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]()
> const'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3u=
hd5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKN=
S0_10block_id_tE]+0x16b):
> undefined reference to
> `uhd::lookup_error::lookup_error(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3u=
hd5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKN=
S0_10block_id_tE]+0x1d9):
> undefined reference to `typeinfo for uhd::lookup_error'
> /tmp/ccXdJ5o0.o: In function
> `std::shared_ptr<uhd::rfnoc::duc_block_control>
> uhd::rfnoc::rfnoc_graph::get_block<uhd::rfnoc::duc_block_control>(uhd::rf=
noc::block_id_t
> const&) const':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_Z=
NK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt10shared_pt=
rIT_ERKNS0_10block_id_tE]+0xbb):
> undefined reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]()
> const'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_Z=
NK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt10shared_pt=
rIT_ERKNS0_10block_id_tE]+0x16b):
> undefined reference to
> `uhd::lookup_error::lookup_error(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_Z=
NK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt10shared_pt=
rIT_ERKNS0_10block_id_tE]+0x1d9):
> undefined reference to `typeinfo for uhd::lookup_error'
> /tmp/ccXdJ5o0.o: In function
> `std::shared_ptr<uhd::rfnoc::replay_block_control>
> uhd::rfnoc::rfnoc_graph::get_block<uhd::rfnoc::replay_block_control>(uhd:=
:rfnoc::block_id_t
> const&) const':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE=
[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEEESt10sha=
red_ptrIT_ERKNS0_10block_id_tE]+0xbb):
> undefined reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]()
> const'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE=
[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEEESt10sha=
red_ptrIT_ERKNS0_10block_id_tE]+0x16b):
> undefined reference to
> `uhd::lookup_error::lookup_error(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9g=
et_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE=
[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEEESt10sha=
red_ptrIT_ERKNS0_10block_id_tE]+0x1d9):
> undefined reference to `typeinfo for uhd::lookup_error'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::basic_command_line_parser<char>::basic_command_l=
ine_parser(int,
> char const* const*)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25b=
asic_command_line_parserIcEC2EiPKPKc[_ZN5boost15program_options25basic_comm=
and_line_parserIcEC5EiPKPKc]+0x81):
> undefined reference to
> `boost::program_options::detail::cmdline::cmdline(std::vector<std::__cxx1=
1::basic_string<char,
> std::char_traits<char>, std::allocator<char> >,
> std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > > > const&)'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::basic_command_line_parser<char>::options(boost::=
program_options::options_description
> const&)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25b=
asic_command_line_parserIcE7optionsERKNS0_19options_descriptionE[_ZN5boost1=
5program_options25basic_command_line_parserIcE7optionsERKNS0_19options_desc=
riptionE]+0x1f):
> undefined reference to
> `boost::program_options::detail::cmdline::set_options_description(boost::=
program_options::options_description
> const&)'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::basic_command_line_parser<char>::style(int)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25b=
asic_command_line_parserIcE5styleEi[_ZN5boost15program_options25basic_comma=
nd_line_parserIcE5styleEi]+0x1c):
> undefined reference to `boost::program_options::detail::cmdline::style(in=
t)'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::basic_command_line_parser<char>::extra_parser(bo=
ost::function1<std::pair<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> >,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > >, std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&>)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25b=
asic_command_line_parserIcE12extra_parserENS_9function1ISt4pairINSt7__cxx11=
12basic_stringIcSt11char_traitsIcESaIcEEESA_ERKSA_EE[_ZN5boost15program_opt=
ions25basic_command_line_parserIcE12extra_parserENS_9function1ISt4pairINSt7=
__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_ERKSA_EE]+0x42):
> undefined reference to
> `boost::program_options::detail::cmdline::set_additional_parser(boost::fu=
nction1<std::pair<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> >,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > >, std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&>)'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::basic_command_line_parser<char>::run()':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25b=
asic_command_line_parserIcE3runEv[_ZN5boost15program_options25basic_command=
_line_parserIcE3runEv]+0x28):
> undefined reference to
> `boost::program_options::detail::cmdline::get_canonical_option_prefix()'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25b=
asic_command_line_parserIcE3runEv[_ZN5boost15program_options25basic_command=
_line_parserIcE3runEv]+0x54):
> undefined reference to `boost::program_options::detail::cmdline::run()'
> /tmp/ccXdJ5o0.o: In function `std::shared_ptr<uhd::rfnoc::radio_control>
> std::dynamic_pointer_cast<uhd::rfnoc::radio_control,
> uhd::rfnoc::noc_block_base>(std::shared_ptr<uhd::rfnoc::noc_block_base>
> const&)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZSt20dynamic_pointer_castIN3=
uhd5rfnoc13radio_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_IT0_E=
[_ZSt20dynamic_pointer_castIN3uhd5rfnoc13radio_controlENS1_14noc_block_base=
EESt10shared_ptrIT_ERKS4_IT0_E]+0x30):
> undefined reference to `typeinfo for uhd::rfnoc::noc_block_base'
> /tmp/ccXdJ5o0.o: In function
> `std::shared_ptr<uhd::rfnoc::duc_block_control>
> std::dynamic_pointer_cast<uhd::rfnoc::duc_block_control,
> uhd::rfnoc::noc_block_base>(std::shared_ptr<uhd::rfnoc::noc_block_base>
> const&)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZSt20dynamic_pointer_castIN3=
uhd5rfnoc17duc_block_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_I=
T0_E[_ZSt20dynamic_pointer_castIN3uhd5rfnoc17duc_block_controlENS1_14noc_bl=
ock_baseEESt10shared_ptrIT_ERKS4_IT0_E]+0x30):
> undefined reference to `typeinfo for uhd::rfnoc::noc_block_base'
> /tmp/ccXdJ5o0.o: In function
> `std::shared_ptr<uhd::rfnoc::replay_block_control>
> std::dynamic_pointer_cast<uhd::rfnoc::replay_block_control,
> uhd::rfnoc::noc_block_base>(std::shared_ptr<uhd::rfnoc::noc_block_base>
> const&)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZSt20dynamic_pointer_castIN3=
uhd5rfnoc20replay_block_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS=
4_IT0_E[_ZSt20dynamic_pointer_castIN3uhd5rfnoc20replay_block_controlENS1_14=
noc_block_baseEESt10shared_ptrIT_ERKS4_IT0_E]+0x30):
> undefined reference to `typeinfo for uhd::rfnoc::noc_block_base'
> /tmp/ccXdJ5o0.o: In function `int const&
> uhd::rfnoc::node_t::get_property<int>(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&,
> uhd::rfnoc::res_source_info const&)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_pro=
pertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15=
res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112b=
asic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0xb4):
> undefined reference to `uhd::_log::log::log(uhd::log::severity_level,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, unsigned int,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&, std::thread::id)'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_pro=
pertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15=
res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112b=
asic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x162):
> undefined reference to `uhd::_log::log::~log()'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_pro=
pertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15=
res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112b=
asic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x19e):
> undefined reference to `uhd::rfnoc::node_t::resolve_all()'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_pro=
pertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15=
res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112b=
asic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x1e8):
> undefined reference to
> `uhd::rfnoc::node_t::_find_property(uhd::rfnoc::res_source_info,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > const&) const'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_pro=
pertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15=
res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112b=
asic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x23c):
> undefined reference to
> `uhd::rfnoc::node_t::_request_property_access(uhd::rfnoc::property_base_t=
*,
> uhd::rfnoc::property_base_t::access_t) const'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_pro=
pertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15=
res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112b=
asic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x2b2):
> undefined reference to `uhd::_log::log::~log()'
> /tmp/ccXdJ5o0.o: In function `std::vector<std::__cxx11::basic_string<char=
,
> std::char_traits<char>, std::allocator<char> >,
> std::allocator<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> > > >
> boost::program_options::to_internal<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> >
> >(std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options11t=
o_internalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorI=
S7_SaIS7_EERKS8_IT_SaISB_EE[_ZN5boost15program_options11to_internalINSt7__c=
xx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorIS7_SaIS7_EERKS8_IT=
_SaISB_EE]+0x6c):
> undefined reference to
> `boost::program_options::to_internal(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> /tmp/ccXdJ5o0.o: In function `uhd::access_error::~access_error()':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd12access_errorD2Ev[_ZN=
3uhd12access_errorD5Ev]+0xf):
> undefined reference to `vtable for uhd::access_error'
> /tmp/ccXdJ5o0.o: In function `uhd::rfnoc::property_t<int>::get() const':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE=
3getEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x133):
> undefined reference to
> `uhd::access_error::access_error(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE=
3getEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x1a1):
> undefined reference to `typeinfo for uhd::access_error'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE=
3getEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x26e):
> undefined reference to
> `uhd::access_error::access_error(std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE=
3getEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x2af):
> undefined reference to `typeinfo for uhd::access_error'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11typed_valueId=
cEE[_ZTVN5boost15program_options11typed_valueIdcEE]+0x38):
> undefined reference to
> `boost::program_options::value_semantic_codecvt_helper<char>::parse(boost=
::any&,
> std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&, bool) const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11typed_valueIm=
cEE[_ZTVN5boost15program_options11typed_valueImcEE]+0x38):
> undefined reference to
> `boost::program_options::value_semantic_codecvt_helper<char>::parse(boost=
::any&,
> std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&, bool) const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11typed_valueIN=
St7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE[_ZTVN5boost15program=
_options11typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc=
EE]+0x38):
> undefined reference to
> `boost::program_options::value_semantic_codecvt_helper<char>::parse(boost=
::any&,
> std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&, bool) const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options20invalid_optio=
n_valueE[_ZTVN5boost15program_options20invalid_option_valueE]+0x20):
> undefined reference to
> `boost::program_options::error_with_option_name::what() const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options20invalid_optio=
n_valueE[_ZTVN5boost15program_options20invalid_option_valueE]+0x30):
> undefined reference to
> `boost::program_options::error_with_option_name::substitute_placeholders(=
std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&) const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options16validation_er=
rorE[_ZTVN5boost15program_options16validation_errorE]+0x20):
> undefined reference to
> `boost::program_options::error_with_option_name::what() const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options16validation_er=
rorE[_ZTVN5boost15program_options16validation_errorE]+0x30):
> undefined reference to
> `boost::program_options::error_with_option_name::substitute_placeholders(=
std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&) const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11typed_valueId=
cEE[_ZTIN5boost15program_options11typed_valueIdcEE]+0x18):
> undefined reference to `typeinfo for
> boost::program_options::value_semantic_codecvt_helper<char>'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11typed_valueIm=
cEE[_ZTIN5boost15program_options11typed_valueImcEE]+0x18):
> undefined reference to `typeinfo for
> boost::program_options::value_semantic_codecvt_helper<char>'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11typed_valueIN=
St7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE[_ZTIN5boost15program=
_options11typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc=
EE]+0x18):
> undefined reference to `typeinfo for
> boost::program_options::value_semantic_codecvt_helper<char>'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options16validation_er=
rorE[_ZTIN5boost15program_options16validation_errorE]+0x10):
> undefined reference to `typeinfo for
> boost::program_options::error_with_option_name'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN3uhd5rfnoc20replay_block_controlE[_ZTI=
N3uhd5rfnoc20replay_block_controlE]+0x10):
> undefined reference to `typeinfo for uhd::rfnoc::noc_block_base'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN3uhd5rfnoc13radio_controlE[_ZTIN3uhd5r=
fnoc13radio_controlE]+0x18):
> undefined reference to `typeinfo for uhd::rfnoc::noc_block_base'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN3uhd5rfnoc17duc_block_controlE[_ZTIN3u=
hd5rfnoc17duc_block_controlE]+0x10):
> undefined reference to `typeinfo for uhd::rfnoc::noc_block_base'
> /tmp/ccXdJ5o0.o: In function `uhd::type_error::~type_error()':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd10type_errorD2Ev[_ZN3u=
hd10type_errorD5Ev]+0xf):
> undefined reference to `vtable for uhd::type_error'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::variables_map::~variables_map()':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options13v=
ariables_mapD2Ev[_ZN5boost15program_options13variables_mapD5Ev]+0xf):
> undefined reference to `vtable for boost::program_options::variables_map'
> /tmp/ccXdJ5o0.o: In function `boost::program_options::typed_value<double,
> char>::name[abi:cxx11]() const':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11=
typed_valueIdcE4nameB5cxx11Ev[_ZNK5boost15program_options11typed_valueIdcE4=
nameB5cxx11Ev]+0x43):
> undefined reference to `boost::program_options::arg[abi:cxx11]'
> /tmp/ccXdJ5o0.o: In function `boost::program_options::typed_value<unsigne=
d
> long, char>::name[abi:cxx11]() const':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11=
typed_valueImcE4nameB5cxx11Ev[_ZNK5boost15program_options11typed_valueImcE4=
nameB5cxx11Ev]+0x43):
> undefined reference to `boost::program_options::arg[abi:cxx11]'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::typed_value<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> >, char>::name() const':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11=
typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcE4nameEv[_=
ZNK5boost15program_options11typed_valueINSt7__cxx1112basic_stringIcSt11char=
_traitsIcESaIcEEEcE4nameEv]+0x43):
> undefined reference to `boost::program_options::arg[abi:cxx11]'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::typed_value<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> >, char>::xparse(boost::any&=
,
> std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&) const':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11=
typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcE6xparseER=
NS_3anyERKSt6vectorIS7_SaIS7_EE[_ZNK5boost15program_options11typed_valueINS=
t7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcE6xparseERNS_3anyERKSt6v=
ectorIS7_SaIS7_EE]+0x7a):
> undefined reference to `boost::program_options::validate(boost::any&,
> std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&,
> std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >*, int)'
> /tmp/ccXdJ5o0.o: In function `void
> boost::program_options::validate<double, char>(boost::any&,
> std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&, double*, long)=
':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options8va=
lidateIdcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_trai=
tsIS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_options8validateIdcEEvRNS_3=
anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEES=
aISB_EEPT_l]+0x42):
> undefined reference to
> `boost::program_options::validators::check_first_occurrence(boost::any
> const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options8va=
lidateIdcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_trai=
tsIS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_options8validateIdcEEvRNS_3=
anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEES=
aISB_EEPT_l]+0x122):
> undefined reference to
> `boost::program_options::invalid_option_value::invalid_option_value(std::=
__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> /tmp/ccXdJ5o0.o: In function `void
> boost::program_options::validate<unsigned long, char>(boost::any&,
> std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&, unsigned long*=
,
> long)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options8va=
lidateImcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_trai=
tsIS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_options8validateImcEEvRNS_3=
anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEES=
aISB_EEPT_l]+0x42):
> undefined reference to
> `boost::program_options::validators::check_first_occurrence(boost::any
> const&)'
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options8va=
lidateImcEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_trai=
tsIS7_ESaIS7_EEESaISB_EEPT_l[_ZN5boost15program_options8validateImcEEvRNS_3=
anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEES=
aISB_EEPT_l]+0x11d):
> undefined reference to
> `boost::program_options::invalid_option_value::invalid_option_value(std::=
__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&)'
> /tmp/ccXdJ5o0.o: In function
> `boost::program_options::error_with_option_name::error_with_option_name(b=
oost::program_options::error_with_option_name
> const&)':
> rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options22e=
rror_with_option_nameC2ERKS1_[_ZN5boost15program_options22error_with_option=
_nameC5ERKS1_]+0x27):
> undefined reference to `vtable for
> boost::program_options::error_with_option_name'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implIN=
S0_19error_info_injectorINS_15program_options16validation_errorEEEEE[_ZTVN5=
boost16exception_detail10clone_implINS0_19error_info_injectorINS_15program_=
options16validation_errorEEEEE]+0x28):
> undefined reference to
> `boost::program_options::error_with_option_name::what() const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implIN=
S0_19error_info_injectorINS_15program_options16validation_errorEEEEE[_ZTVN5=
boost16exception_detail10clone_implINS0_19error_info_injectorINS_15program_=
options16validation_errorEEEEE]+0x38):
> undefined reference to
> `boost::program_options::error_with_option_name::substitute_placeholders(=
std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&) const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_i=
njectorINS_15program_options16validation_errorEEE[_ZTVN5boost16exception_de=
tail19error_info_injectorINS_15program_options16validation_errorEEE]+0x20):
> undefined reference to
> `boost::program_options::error_with_option_name::what() const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_i=
njectorINS_15program_options16validation_errorEEE[_ZTVN5boost16exception_de=
tail19error_info_injectorINS_15program_options16validation_errorEEE]+0x30):
> undefined reference to
> `boost::program_options::error_with_option_name::substitute_placeholders(=
std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&) const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implIN=
S0_19error_info_injectorINS_15program_options20invalid_option_valueEEEEE[_Z=
TVN5boost16exception_detail10clone_implINS0_19error_info_injectorINS_15prog=
ram_options20invalid_option_valueEEEEE]+0x28):
> undefined reference to
> `boost::program_options::error_with_option_name::what() const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10clone_implIN=
S0_19error_info_injectorINS_15program_options20invalid_option_valueEEEEE[_Z=
TVN5boost16exception_detail10clone_implINS0_19error_info_injectorINS_15prog=
ram_options20invalid_option_valueEEEEE]+0x38):
> undefined reference to
> `boost::program_options::error_with_option_name::substitute_placeholders(=
std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&) const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_i=
njectorINS_15program_options20invalid_option_valueEEE[_ZTVN5boost16exceptio=
n_detail19error_info_injectorINS_15program_options20invalid_option_valueEEE=
]+0x20):
> undefined reference to
> `boost::program_options::error_with_option_name::what() const'
> /tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_i=
njectorINS_15program_options20invalid_option_valueEEE[_ZTVN5boost16exceptio=
n_detail19error_info_injectorINS_15program_options20invalid_option_valueEEE=
]+0x30):
> undefined reference to
> `boost::program_options::error_with_option_name::substitute_placeholders(=
std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > const&) const'
> collect2: error: ld returned 1 exit status
> <builtin>: recipe for target 'rfnoc_replay_samples_1_from_file' failed
> make: *** [rfnoc_replay_samples_1_from_file] Error 1
>
> From looking at the whole printout to the screen, it seems as though UHD
> functions as well as boost functions are not being seen, hence the
> "undefined reference" messages. I'm unclear as to why this is happening a=
t
> the moment. This is a complete printout.
>
>
>
> On Wednesday, August 25, 2021, 10:30:21 AM EDT, Tellrell White via
> USRP-users <usrp-users@lists.ettus.com> wrote:
>
>
> Thanks for the reply. I tried the CMake approach following the steps you
> mentioned but received an error when building.
>
> First, I created CMakeLists which is pretty simple as shown below
>
> cmake_minimum_required(VERSION 3.10)
> #set the project name
> project(Tutorial)
> #add the executable
> add_executable(replay_example rfnoc_replay_samples_1_from_file.cpp)
>
> Then, I sourced the file, and set the flag for CMake. Lastly, inside of a=
 build directory, I tried building the App and got the following printout
>
> /usr/local/share/uhd/images/y/sysroots/x86_64-oesdk-linux/usr/libexec/arm=
-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/real-ld:
> CMakeFiles/replay_example.dir/rfnoc_replay_samples_1_from_file.cpp.o:(.ro=
data._ZTVN5boost15program_options11typed_valueIjcEE[_ZTVN5boost15program_op=
tions11typed_valueIjcEE]+0x1c):
> undefined reference to
> `boost::program_options::value_semantic_codecvt_helper<char>::parse(boost=
::any&,
> std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&, bool) const'
> /usr/local/share/uhd/images/y/sysroots/x86_64-oesdk-linux/usr/libexec/arm=
-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/real-ld:
> CMakeFiles/replay_example.dir/rfnoc_replay_samples_1_from_file.cpp.o:(.ro=
data._ZTVN5boost15program_options11typed_valueIdcEE[_ZTVN5boost15program_op=
tions11typed_valueIdcEE]+0x1c):
> undefined reference to
> `boost::program_options::value_semantic_codecvt_helper<char>::parse(boost=
::any&,
> std::vector<std::__cxx11::basic_string<char, std::char_traits<char>,
> std::allocator<char> >, std::allocator<std::__cxx11::basic_string<char,
> std::char_traits<char>, std::allocator<char> > > > const&, bool) const'
> collect2: error: ld returned 1 exit status
> CMakeFiles/replay_example.dir/build.make:83: recipe for target
> 'replay_example' failed
> make[2]: *** [replay_example] Error 1
> CMakeFiles/Makefile2:75: recipe for target
> 'CMakeFiles/replay_example.dir/all' failed
> make[1]: *** [CMakeFiles/replay_example.dir/all] Error 2
> Makefile:83: recipe for target 'all' failed
> make: *** [all] Error 2
>
> I'm not sure if this is a boost issue or something else.
>
>
>
>
> On Tuesday, August 24, 2021, 07:21:17 PM EDT, Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>
> Hi Tellrell,
>
> Do not use the Xilinx SDK, only the Yocto one, i.e.
> /usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi
>
> You need to source the
> "environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi" file before cross
> compiling. If you use cmake with building your application, you also need
> to set the flag "-DCMAKE_TOOLCHAIN_FILE=3D<path to
> UHD>/host/cmake/Toolchains/oe-sdk_cross.cmake".
>
> Also, if you just want to run the UHD example, it already exists on the
> N310's root file system at:
> /usr/lib/uhd/examples/rfnoc_replay_samples_from_file
>
> Jonathon
>
> On Tue, Aug 24, 2021 at 4:42 PM Tellrell White via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> I'm trying to compile the source code using SDK 2019.1. I'm pointing the
> the SDK project to the directory for sysroot and also to the directory fo=
r
> my linux toolchain which are the following
>
> /usr/local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi
>
>
> /tools/Xilinx/SDK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-=
gnueabihf
>
> I continue to get the following error stating that these files can't be
> found, however, they do exist. And, when I try adding them within the
> project and refreshing nothing happens.
>
>
> cannot find /lib/ld-linux-armhf.so.3
>
> cannot find /lib/libc.so.6
>
> cannot find /usr/lib/libc_nonshared.a
>
> Am I going about building this application correctly? I thought that
> linking my project to sysroot which I installed for the n310 and to the S=
DK
> toolchain( maybe I'm doing this incorrectly) would be pretty
> straightforward.
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
> On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D. Leech <
> patchvonbraun@gmail.com> wrote:
>
>
> On 2021-08-24 12:08 p.m., Tellrell White wrote:
>
> Yep. Marcus you caught it!! That worked. Do I need to complete the
> sections on "Compiling MPM Natively" and "Building UHD"?? I understand th=
at
> I need the cross-compiler for compiling SW for the device but I don't see
> the need for completing the other two parts. Is there something additiona=
l
> that needs to be done other than cross compiling on the host machine and
> ssh'ing over the executable?
>
>
> As far as I know, you should be able to just cross-compile the code you'r=
e
> interested in.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000024c90005ca824430
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Tellrell,<div><br></div><div>Can you post the exact ste=
ps you are=C2=A0following?</div><div><br></div><div>Jonathon</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, A=
ug 25, 2021 at 8:59 PM Tellrell White via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"fo=
nt-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:1=
3px"><div></div>
        <div dir=3D"ltr"><div><div dir=3D"ltr"><span>From looking at the wh=
ole printout to the screen, it seems as though UHD
 functions as well as boost functions are not being seen, hence the=20
&quot;undefined reference&quot; messages. I&#39;m unclear as to why this is=
 happening=20
at the moment. This is a complete printout below. </span><br></div><div><br=
></div><div><br></div><div>tw@tw-virtual-machine:/usr/local/share/uhd/image=
s/y$ sudo make rfnoc_replay_samples_1_from_file</div>[sudo] password for tw=
: <br>g++=C2=A0=C2=A0=C2=A0=C2=A0 rfnoc_replay_samples_1_from_file.cpp=C2=
=A0=C2=A0 -o rfnoc_replay_samples_1_from_file<br>/tmp/ccXdJ5o0.o: In functi=
on `_main(int, char**)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text=
+0x34e): undefined reference to `boost::program_options::options_descriptio=
n::m_default_line_length&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.tex=
t+0x359): undefined reference to `boost::program_options::options_descripti=
on::m_default_line_length&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.te=
xt+0x3a0): undefined reference to `boost::program_options::options_descript=
ion::options_description(std::__cxx11::basic_string&lt;char, std::char_trai=
ts&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, unsigned int, u=
nsigned int)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x3cd): un=
defined reference to `boost::program_options::options_description::add_opti=
ons()&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x3f1): undefined=
 reference to `boost::program_options::options_description_easy_init::opera=
tor()(char const*, char const*)&#39;<br>rfnoc_replay_samples_1_from_file.cp=
p:(.text+0x45d): undefined reference to `boost::program_options::options_de=
scription_easy_init::operator()(char const*, boost::program_options::value_=
semantic const*, char const*)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:=
(.text+0x488): undefined reference to `boost::program_options::options_desc=
ription_easy_init::operator()(char const*, boost::program_options::value_se=
mantic const*, char const*)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.=
text+0x4d3): undefined reference to `boost::program_options::options_descri=
ption_easy_init::operator()(char const*, boost::program_options::value_sema=
ntic const*, char const*)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.te=
xt+0x51e): undefined reference to `boost::program_options::options_descript=
ion_easy_init::operator()(char const*, boost::program_options::value_semant=
ic const*, char const*)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text=
+0x569): undefined reference to `boost::program_options::options_descriptio=
n_easy_init::operator()(char const*, boost::program_options::value_semantic=
 const*, char const*)&#39;<br>/tmp/ccXdJ5o0.o:rfnoc_replay_samples_1_from_f=
ile.cpp:(.text+0x5b4): more undefined references to `boost::program_options=
::options_description_easy_init::operator()(char const*, boost::program_opt=
ions::value_semantic const*, char const*)&#39; follow<br>/tmp/ccXdJ5o0.o: I=
n function `_main(int, char**)&#39;:<br>rfnoc_replay_samples_1_from_file.cp=
p:(.text+0x817): undefined reference to `boost::program_options::variables_=
map::variables_map()&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x=
877): undefined reference to `boost::program_options::store(boost::program_=
options::basic_parsed_options&lt;char&gt; const&amp;, boost::program_option=
s::variables_map&amp;, bool)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(=
.text+0x8a4): undefined reference to `boost::program_options::notify(boost:=
:program_options::variables_map&amp;)&#39;<br>rfnoc_replay_samples_1_from_f=
ile.cpp:(.text+0x941): undefined reference to `boost::program_options::oper=
ator&lt;&lt;(std::ostream&amp;, boost::program_options::options_description=
 const&amp;)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0xa18): un=
defined reference to `uhd::device_addr_t::device_addr_t(std::__cxx11::basic=
_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &=
gt; const&amp;)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0xa31):=
 undefined reference to `uhd::rfnoc::rfnoc_graph::make(uhd::device_addr_t c=
onst&amp;)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0xa91): unde=
fined reference to `uhd::rfnoc::block_id_t::block_id_t(unsigned long, std::=
__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator=
&lt;char&gt; &gt; const&amp;, unsigned long)&#39;<br>rfnoc_replay_samples_1=
_from_file.cpp:(.text+0xcf7): undefined reference to `uhd::rfnoc::block_id_=
t::block_id_t(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&=
gt;, std::allocator&lt;char&gt; &gt; const&amp;)&#39;<br>rfnoc_replay_sampl=
es_1_from_file.cpp:(.text+0xd3c): undefined reference to `uhd::rfnoc::block=
_id_t::match(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&g=
t;, std::allocator&lt;char&gt; &gt; const&amp;)&#39;<br>rfnoc_replay_sample=
s_1_from_file.cpp:(.text+0xeef): undefined reference to `uhd::rfnoc::block_=
id_t::block_id_t(unsigned long, std::__cxx11::basic_string&lt;char, std::ch=
ar_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, unsigned=
 long)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x127f): undefin=
ed reference to `uhd::device_addr_t::device_addr_t(std::__cxx11::basic_stri=
ng&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; c=
onst&amp;)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x1ce8): und=
efined reference to `uhd::_log::log::log(uhd::log::severity_level, std::__c=
xx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt=
;char&gt; &gt; const&amp;, unsigned int, std::__cxx11::basic_string&lt;char=
, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;,=
 std::thread::id)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x1d0=
d): undefined reference to `uhd::_log::log::~log()&#39;<br>rfnoc_replay_sam=
ples_1_from_file.cpp:(.text+0x1f6e): undefined reference to `uhd::_log::log=
::log(uhd::log::severity_level, std::__cxx11::basic_string&lt;char, std::ch=
ar_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, unsigned=
 int, std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std=
::allocator&lt;char&gt; &gt; const&amp;, std::thread::id)&#39;<br>rfnoc_rep=
lay_samples_1_from_file.cpp:(.text+0x1f93): undefined reference to `uhd::_l=
og::log::~log()&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x207a)=
: undefined reference to `uhd::_log::log::log(uhd::log::severity_level, std=
::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocat=
or&lt;char&gt; &gt; const&amp;, unsigned int, std::__cxx11::basic_string&lt=
;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&=
amp;, std::thread::id)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+=
0x209f): undefined reference to `uhd::_log::log::~log()&#39;<br>rfnoc_repla=
y_samples_1_from_file.cpp:(.text+0x2120): undefined reference to `uhd::devi=
ce_addr_t::device_addr_t(std::__cxx11::basic_string&lt;char, std::char_trai=
ts&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)&#39;<br>rfnoc_r=
eplay_samples_1_from_file.cpp:(.text+0x2183): undefined reference to `uhd::=
tx_metadata_t::tx_metadata_t()&#39;<br>rfnoc_replay_samples_1_from_file.cpp=
:(.text+0x21af): undefined reference to `uhd::rfnoc::block_id_t::to_string[=
abi:cxx11]() const&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x2e=
93): undefined reference to `uhd::time_spec_t::time_spec_t(double)&#39;<br>=
rfnoc_replay_samples_1_from_file.cpp:(.text+0x2f47): undefined reference to=
 `uhd::stream_cmd_t::stream_cmd_t(uhd::stream_cmd_t::stream_mode_t const&am=
p;)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x3604): undefined =
reference to `uhd::_log::log::~log()&#39;<br>rfnoc_replay_samples_1_from_fi=
le.cpp:(.text+0x3666): undefined reference to `uhd::_log::log::~log()&#39;<=
br>rfnoc_replay_samples_1_from_file.cpp:(.text+0x36c8): undefined reference=
 to `uhd::_log::log::~log()&#39;<br>/tmp/ccXdJ5o0.o: In function `uhd::rfno=
c::property_t&lt;int&gt;* (anonymous namespace)::_assert_prop&lt;int&gt;(uh=
d::rfnoc::property_base_t*, std::__cxx11::basic_string&lt;char, std::char_t=
raits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, std::__cxx11=
::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;cha=
r&gt; &gt; const&amp;)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text=
+0x3a81): undefined reference to `uhd::lookup_error::lookup_error(std::__cx=
x11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;=
char&gt; &gt; const&amp;)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.te=
xt+0x3aad): undefined reference to `typeinfo for uhd::lookup_error&#39;<br>=
rfnoc_replay_samples_1_from_file.cpp:(.text+0x3ba6): undefined reference to=
 `uhd::type_error::type_error(std::__cxx11::basic_string&lt;char, std::char=
_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)&#39;<br>rf=
noc_replay_samples_1_from_file.cpp:(.text+0x3be1): undefined reference to `=
typeinfo for uhd::type_error&#39;<br>/tmp/ccXdJ5o0.o: In function `uhd::rfn=
oc::block_id_t::operator std::__cxx11::basic_string&lt;char, std::char_trai=
ts&lt;char&gt;, std::allocator&lt;char&gt; &gt;() const&#39;:<br>rfnoc_repl=
ay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10block_id_tcvNSt7__cxx1112=
basic_stringIcSt11char_traitsIcESaIcEEEEv[_ZNK3uhd5rfnoc10block_id_tcvNSt7_=
_cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv]+0x2e): undefined referen=
ce to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]() const&#39;<br>/tmp/cc=
XdJ5o0.o: In function `uhd::rfnoc::operator&lt;&lt;(std::ostream&amp;, uhd:=
:rfnoc::block_id_t)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._Z=
N3uhd5rfnoclsERSoNS0_10block_id_tE[_ZN3uhd5rfnoclsERSoNS0_10block_id_tE]+0x=
2f): undefined reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]()=
 const&#39;<br>/tmp/ccXdJ5o0.o: In function `uhd::runtime_error::~runtime_e=
rror()&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd13runtim=
e_errorD2Ev[_ZN3uhd13runtime_errorD5Ev]+0xf): undefined reference to `vtabl=
e for uhd::runtime_error&#39;<br>/tmp/ccXdJ5o0.o: In function `uhd::stream_=
args_t::stream_args_t(std::__cxx11::basic_string&lt;char, std::char_traits&=
lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, std::__cxx11::basi=
c_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; =
&gt; const&amp;)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3u=
hd13stream_args_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES=
8_[_ZN3uhd13stream_args_tC5ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcE=
SaIcEEES8_]+0x76): undefined reference to `uhd::device_addr_t::device_addr_=
t(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::al=
locator&lt;char&gt; &gt; const&amp;)&#39;<br>/tmp/ccXdJ5o0.o: In function `=
boost::program_options::error_with_option_name::~error_with_option_name()&#=
39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_opti=
ons22error_with_option_nameD2Ev[_ZN5boost15program_options22error_with_opti=
on_nameD5Ev]+0xf): undefined reference to `vtable for boost::program_option=
s::error_with_option_name&#39;<br>/tmp/ccXdJ5o0.o: In function `boost::prog=
ram_options::validation_error::validation_error(boost::program_options::val=
idation_error::kind_t, std::__cxx11::basic_string&lt;char, std::char_traits=
&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, std::__cxx11::bas=
ic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt;=
 &gt; const&amp;, int)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text=
._ZN5boost15program_options16validation_errorC2ENS1_6kind_tERKNSt7__cxx1112=
basic_stringIcSt11char_traitsIcESaIcEEESA_i[_ZN5boost15program_options16val=
idation_errorC5ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcE=
SaIcEEESA_i]+0x41): undefined reference to `boost::program_options::validat=
ion_error::get_template[abi:cxx11](boost::program_options::validation_error=
::kind_t)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15pr=
ogram_options16validation_errorC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIc=
St11char_traitsIcESaIcEEESA_i[_ZN5boost15program_options16validation_errorC=
5ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i]+0=
x5e): undefined reference to `boost::program_options::error_with_option_nam=
e::error_with_option_name(std::__cxx11::basic_string&lt;char, std::char_tra=
its&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, std::__cxx11::=
basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&=
gt; &gt; const&amp;, std::__cxx11::basic_string&lt;char, std::char_traits&l=
t;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;, int)&#39;<br>/tmp/c=
cXdJ5o0.o: In function `boost::program_options::value_semantic_codecvt_help=
er&lt;char&gt;::value_semantic_codecvt_helper()&#39;:<br>rfnoc_replay_sampl=
es_1_from_file.cpp:(.text._ZN5boost15program_options29value_semantic_codecv=
t_helperIcEC2Ev[_ZN5boost15program_options29value_semantic_codecvt_helperIc=
EC5Ev]+0x1b): undefined reference to `vtable for boost::program_options::va=
lue_semantic_codecvt_helper&lt;char&gt;&#39;<br>/tmp/ccXdJ5o0.o: In functio=
n `boost::program_options::value_semantic_codecvt_helper&lt;char&gt;::~valu=
e_semantic_codecvt_helper()&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(=
.text._ZN5boost15program_options29value_semantic_codecvt_helperIcED2Ev[_ZN5=
boost15program_options29value_semantic_codecvt_helperIcED5Ev]+0xf): undefin=
ed reference to `vtable for boost::program_options::value_semantic_codecvt_=
helper&lt;char&gt;&#39;<br>/tmp/ccXdJ5o0.o: In function `uhd::lookup_error:=
:~lookup_error()&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3u=
hd12lookup_errorD2Ev[_ZN3uhd12lookup_errorD5Ev]+0xf): undefined reference t=
o `vtable for uhd::lookup_error&#39;<br>/tmp/ccXdJ5o0.o: In function `std::=
shared_ptr&lt;uhd::rfnoc::radio_control&gt; uhd::rfnoc::rfnoc_graph::get_bl=
ock&lt;uhd::rfnoc::radio_control&gt;(uhd::rfnoc::block_id_t const&amp;) con=
st&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfn=
oc_graph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id=
_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEESt10shared_=
ptrIT_ERKNS0_10block_id_tE]+0xbb): undefined reference to `uhd::rfnoc::bloc=
k_id_t::to_string[abi:cxx11]() const&#39;<br>rfnoc_replay_samples_1_from_fi=
le.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEES=
t10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockI=
NS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE]+0x16b): undefi=
ned reference to `uhd::lookup_error::lookup_error(std::__cxx11::basic_strin=
g&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; co=
nst&amp;)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfno=
c11rfnoc_graph9get_blockINS0_13radio_controlEEESt10shared_ptrIT_ERKNS0_10bl=
ock_id_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_13radio_controlEEESt10s=
hared_ptrIT_ERKNS0_10block_id_tE]+0x1d9): undefined reference to `typeinfo =
for uhd::lookup_error&#39;<br>/tmp/ccXdJ5o0.o: In function `std::shared_ptr=
&lt;uhd::rfnoc::duc_block_control&gt; uhd::rfnoc::rfnoc_graph::get_block&lt=
;uhd::rfnoc::duc_block_control&gt;(uhd::rfnoc::block_id_t const&amp;) const=
&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc=
_graph9get_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_=
id_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt10s=
hared_ptrIT_ERKNS0_10block_id_tE]+0xbb): undefined reference to `uhd::rfnoc=
::block_id_t::to_string[abi:cxx11]() const&#39;<br>rfnoc_replay_samples_1_f=
rom_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_c=
ontrolEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_graph9=
get_blockINS0_17duc_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE]+=
0x16b): undefined reference to `uhd::lookup_error::lookup_error(std::__cxx1=
1::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;ch=
ar&gt; &gt; const&amp;)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text=
._ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc_block_controlEEESt10shared=
_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_17duc=
_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE]+0x1d9): undefined r=
eference to `typeinfo for uhd::lookup_error&#39;<br>/tmp/ccXdJ5o0.o: In fun=
ction `std::shared_ptr&lt;uhd::rfnoc::replay_block_control&gt; uhd::rfnoc::=
rfnoc_graph::get_block&lt;uhd::rfnoc::replay_block_control&gt;(uhd::rfnoc::=
block_id_t const&amp;) const&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:=
(.text._ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEEES=
t10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockI=
NS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE]+0xbb): =
undefined reference to `uhd::rfnoc::block_id_t::to_string[abi:cxx11]() cons=
t&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc=
_graph9get_blockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10blo=
ck_id_tE[_ZNK3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEE=
ESt10shared_ptrIT_ERKNS0_10block_id_tE]+0x16b): undefined reference to `uhd=
::lookup_error::lookup_error(std::__cxx11::basic_string&lt;char, std::char_=
traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)&#39;<br>rfn=
oc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc11rfnoc_graph9get_bl=
ockINS0_20replay_block_controlEEESt10shared_ptrIT_ERKNS0_10block_id_tE[_ZNK=
3uhd5rfnoc11rfnoc_graph9get_blockINS0_20replay_block_controlEEESt10shared_p=
trIT_ERKNS0_10block_id_tE]+0x1d9): undefined reference to `typeinfo for uhd=
::lookup_error&#39;<br>/tmp/ccXdJ5o0.o: In function `boost::program_options=
::basic_command_line_parser&lt;char&gt;::basic_command_line_parser(int, cha=
r const* const*)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5b=
oost15program_options25basic_command_line_parserIcEC2EiPKPKc[_ZN5boost15pro=
gram_options25basic_command_line_parserIcEC5EiPKPKc]+0x81): undefined refer=
ence to `boost::program_options::detail::cmdline::cmdline(std::vector&lt;st=
d::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::alloca=
tor&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char,=
 std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; co=
nst&amp;)&#39;<br>/tmp/ccXdJ5o0.o: In function `boost::program_options::bas=
ic_command_line_parser&lt;char&gt;::options(boost::program_options::options=
_description const&amp;)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.te=
xt._ZN5boost15program_options25basic_command_line_parserIcE7optionsERKNS0_1=
9options_descriptionE[_ZN5boost15program_options25basic_command_line_parser=
IcE7optionsERKNS0_19options_descriptionE]+0x1f): undefined reference to `bo=
ost::program_options::detail::cmdline::set_options_description(boost::progr=
am_options::options_description const&amp;)&#39;<br>/tmp/ccXdJ5o0.o: In fun=
ction `boost::program_options::basic_command_line_parser&lt;char&gt;::style=
(int)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15progr=
am_options25basic_command_line_parserIcE5styleEi[_ZN5boost15program_options=
25basic_command_line_parserIcE5styleEi]+0x1c): undefined reference to `boos=
t::program_options::detail::cmdline::style(int)&#39;<br>/tmp/ccXdJ5o0.o: In=
 function `boost::program_options::basic_command_line_parser&lt;char&gt;::e=
xtra_parser(boost::function1&lt;std::pair&lt;std::__cxx11::basic_string&lt;=
char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::_=
_cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&=
lt;char&gt; &gt; &gt;, std::__cxx11::basic_string&lt;char, std::char_traits=
&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;&gt;)&#39;:<br>rfno=
c_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25basic_c=
ommand_line_parserIcE12extra_parserENS_9function1ISt4pairINSt7__cxx1112basi=
c_stringIcSt11char_traitsIcESaIcEEESA_ERKSA_EE[_ZN5boost15program_options25=
basic_command_line_parserIcE12extra_parserENS_9function1ISt4pairINSt7__cxx1=
112basic_stringIcSt11char_traitsIcESaIcEEESA_ERKSA_EE]+0x42): undefined ref=
erence to `boost::program_options::detail::cmdline::set_additional_parser(b=
oost::function1&lt;std::pair&lt;std::__cxx11::basic_string&lt;char, std::ch=
ar_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::__cxx11::basic=
_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &=
gt; &gt;, std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;,=
 std::allocator&lt;char&gt; &gt; const&amp;&gt;)&#39;<br>/tmp/ccXdJ5o0.o: I=
n function `boost::program_options::basic_command_line_parser&lt;char&gt;::=
run()&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15progr=
am_options25basic_command_line_parserIcE3runEv[_ZN5boost15program_options25=
basic_command_line_parserIcE3runEv]+0x28): undefined reference to `boost::p=
rogram_options::detail::cmdline::get_canonical_option_prefix()&#39;<br>rfno=
c_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options25basic_c=
ommand_line_parserIcE3runEv[_ZN5boost15program_options25basic_command_line_=
parserIcE3runEv]+0x54): undefined reference to `boost::program_options::det=
ail::cmdline::run()&#39;<br>/tmp/ccXdJ5o0.o: In function `std::shared_ptr&l=
t;uhd::rfnoc::radio_control&gt; std::dynamic_pointer_cast&lt;uhd::rfnoc::ra=
dio_control, uhd::rfnoc::noc_block_base&gt;(std::shared_ptr&lt;uhd::rfnoc::=
noc_block_base&gt; const&amp;)&#39;:<br>rfnoc_replay_samples_1_from_file.cp=
p:(.text._ZSt20dynamic_pointer_castIN3uhd5rfnoc13radio_controlENS1_14noc_bl=
ock_baseEESt10shared_ptrIT_ERKS4_IT0_E[_ZSt20dynamic_pointer_castIN3uhd5rfn=
oc13radio_controlENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_IT0_E]+0x30)=
: undefined reference to `typeinfo for uhd::rfnoc::noc_block_base&#39;<br>/=
tmp/ccXdJ5o0.o: In function `std::shared_ptr&lt;uhd::rfnoc::duc_block_contr=
ol&gt; std::dynamic_pointer_cast&lt;uhd::rfnoc::duc_block_control, uhd::rfn=
oc::noc_block_base&gt;(std::shared_ptr&lt;uhd::rfnoc::noc_block_base&gt; co=
nst&amp;)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZSt20dynami=
c_pointer_castIN3uhd5rfnoc17duc_block_controlENS1_14noc_block_baseEESt10sha=
red_ptrIT_ERKS4_IT0_E[_ZSt20dynamic_pointer_castIN3uhd5rfnoc17duc_block_con=
trolENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_IT0_E]+0x30): undefined r=
eference to `typeinfo for uhd::rfnoc::noc_block_base&#39;<br>/tmp/ccXdJ5o0.=
o: In function `std::shared_ptr&lt;uhd::rfnoc::replay_block_control&gt; std=
::dynamic_pointer_cast&lt;uhd::rfnoc::replay_block_control, uhd::rfnoc::noc=
_block_base&gt;(std::shared_ptr&lt;uhd::rfnoc::noc_block_base&gt; const&amp=
;)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZSt20dynamic_point=
er_castIN3uhd5rfnoc20replay_block_controlENS1_14noc_block_baseEESt10shared_=
ptrIT_ERKS4_IT0_E[_ZSt20dynamic_pointer_castIN3uhd5rfnoc20replay_block_cont=
rolENS1_14noc_block_baseEESt10shared_ptrIT_ERKS4_IT0_E]+0x30): undefined re=
ference to `typeinfo for uhd::rfnoc::noc_block_base&#39;<br>/tmp/ccXdJ5o0.o=
: In function `int const&amp; uhd::rfnoc::node_t::get_property&lt;int&gt;(s=
td::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::alloc=
ator&lt;char&gt; &gt; const&amp;, uhd::rfnoc::res_source_info const&amp;)&#=
39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12g=
et_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK=
NS0_15res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cx=
x1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0xb4)=
: undefined reference to `uhd::_log::log::log(uhd::log::severity_level, std=
::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocat=
or&lt;char&gt; &gt; const&amp;, unsigned int, std::__cxx11::basic_string&lt=
;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&=
amp;, std::thread::id)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text.=
_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11=
char_traitsIcESaIcEEERKNS0_15res_source_infoE[_ZN3uhd5rfnoc6node_t12get_pro=
pertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15=
res_source_infoE]+0x162): undefined reference to `uhd::_log::log::~log()&#3=
9;<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get=
_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS=
0_15res_source_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1=
112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x19e):=
 undefined reference to `uhd::rfnoc::node_t::resolve_all()&#39;<br>rfnoc_re=
play_samples_1_from_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_propertyIiEER=
KT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source=
_infoE[_ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112basic_strin=
gIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE]+0x1e8): undefined ref=
erence to `uhd::rfnoc::node_t::_find_property(uhd::rfnoc::res_source_info, =
std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allo=
cator&lt;char&gt; &gt; const&amp;) const&#39;<br>rfnoc_replay_samples_1_fro=
m_file.cpp:(.text._ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112=
basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE[_ZN3uhd5rfn=
oc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traits=
IcESaIcEEERKNS0_15res_source_infoE]+0x23c): undefined reference to `uhd::rf=
noc::node_t::_request_property_access(uhd::rfnoc::property_base_t*, uhd::rf=
noc::property_base_t::access_t) const&#39;<br>rfnoc_replay_samples_1_from_f=
ile.cpp:(.text._ZN3uhd5rfnoc6node_t12get_propertyIiEERKT_RKNSt7__cxx1112bas=
ic_stringIcSt11char_traitsIcESaIcEEERKNS0_15res_source_infoE[_ZN3uhd5rfnoc6=
node_t12get_propertyIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcE=
SaIcEEERKNS0_15res_source_infoE]+0x2b2): undefined reference to `uhd::_log:=
:log::~log()&#39;<br>/tmp/ccXdJ5o0.o: In function `std::vector&lt;std::__cx=
x11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;=
char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char, std::c=
har_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; boost::pr=
ogram_options::to_internal&lt;std::__cxx11::basic_string&lt;char, std::char=
_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt;(std::vector&lt;st=
d::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::alloca=
tor&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char,=
 std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; co=
nst&amp;)&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN5boost15p=
rogram_options11to_internalINSt7__cxx1112basic_stringIcSt11char_traitsIcESa=
IcEEEEESt6vectorIS7_SaIS7_EERKS8_IT_SaISB_EE[_ZN5boost15program_options11to=
_internalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorIS=
7_SaIS7_EERKS8_IT_SaISB_EE]+0x6c): undefined reference to `boost::program_o=
ptions::to_internal(std::__cxx11::basic_string&lt;char, std::char_traits&lt=
;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;)&#39;<br>/tmp/ccXdJ5o=
0.o: In function `uhd::access_error::~access_error()&#39;:<br>rfnoc_replay_=
samples_1_from_file.cpp:(.text._ZN3uhd12access_errorD2Ev[_ZN3uhd12access_er=
rorD5Ev]+0xf): undefined reference to `vtable for uhd::access_error&#39;<br=
>/tmp/ccXdJ5o0.o: In function `uhd::rfnoc::property_t&lt;int&gt;::get() con=
st&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10pro=
perty_tIiE3getEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x133): undefined ref=
erence to `uhd::access_error::access_error(std::__cxx11::basic_string&lt;ch=
ar, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp=
;)&#39;<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK3uhd5rfnoc10prop=
erty_tIiE3getEv[_ZNK3uhd5rfnoc10property_tIiE3getEv]+0x1a1): undefined refe=
rence to `typeinfo for uhd::access_error&#39;<br>rfnoc_replay_samples_1_fro=
m_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE3getEv[_ZNK3uhd5rfnoc10prope=
rty_tIiE3getEv]+0x26e): undefined reference to `uhd::access_error::access_e=
rror(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std:=
:allocator&lt;char&gt; &gt; const&amp;)&#39;<br>rfnoc_replay_samples_1_from=
_file.cpp:(.text._ZNK3uhd5rfnoc10property_tIiE3getEv[_ZNK3uhd5rfnoc10proper=
ty_tIiE3getEv]+0x2af): undefined reference to `typeinfo for uhd::access_err=
or&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11type=
d_valueIdcEE[_ZTVN5boost15program_options11typed_valueIdcEE]+0x38): undefin=
ed reference to `boost::program_options::value_semantic_codecvt_helper&lt;c=
har&gt;::parse(boost::any&amp;, std::vector&lt;std::__cxx11::basic_string&l=
t;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std:=
:allocator&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&=
gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; const&amp;, bool) const&#39;=
<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11typed_value=
ImcEE[_ZTVN5boost15program_options11typed_valueImcEE]+0x38): undefined refe=
rence to `boost::program_options::value_semantic_codecvt_helper&lt;char&gt;=
::parse(boost::any&amp;, std::vector&lt;std::__cxx11::basic_string&lt;char,=
 std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::alloca=
tor&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, st=
d::allocator&lt;char&gt; &gt; &gt; &gt; const&amp;, bool) const&#39;<br>/tm=
p/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options11typed_valueINSt7__=
cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE[_ZTVN5boost15program_opti=
ons11typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE]+0=
x38): undefined reference to `boost::program_options::value_semantic_codecv=
t_helper&lt;char&gt;::parse(boost::any&amp;, std::vector&lt;std::__cxx11::b=
asic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&g=
t; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char, std::char_tr=
aits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; const&amp;, boo=
l) const&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options=
20invalid_option_valueE[_ZTVN5boost15program_options20invalid_option_valueE=
]+0x20): undefined reference to `boost::program_options::error_with_option_=
name::what() const&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15progr=
am_options20invalid_option_valueE[_ZTVN5boost15program_options20invalid_opt=
ion_valueE]+0x30): undefined reference to `boost::program_options::error_wi=
th_option_name::substitute_placeholders(std::__cxx11::basic_string&lt;char,=
 std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;) =
const&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options16v=
alidation_errorE[_ZTVN5boost15program_options16validation_errorE]+0x20): un=
defined reference to `boost::program_options::error_with_option_name::what(=
) const&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost15program_options1=
6validation_errorE[_ZTVN5boost15program_options16validation_errorE]+0x30): =
undefined reference to `boost::program_options::error_with_option_name::sub=
stitute_placeholders(std::__cxx11::basic_string&lt;char, std::char_traits&l=
t;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;) const&#39;<br>/tmp/=
ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11typed_valueIdcEE[_ZT=
IN5boost15program_options11typed_valueIdcEE]+0x18): undefined reference to =
`typeinfo for boost::program_options::value_semantic_codecvt_helper&lt;char=
&gt;&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options11ty=
ped_valueImcEE[_ZTIN5boost15program_options11typed_valueImcEE]+0x18): undef=
ined reference to `typeinfo for boost::program_options::value_semantic_code=
cvt_helper&lt;char&gt;&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15p=
rogram_options11typed_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESa=
IcEEEcEE[_ZTIN5boost15program_options11typed_valueINSt7__cxx1112basic_strin=
gIcSt11char_traitsIcESaIcEEEcEE]+0x18): undefined reference to `typeinfo fo=
r boost::program_options::value_semantic_codecvt_helper&lt;char&gt;&#39;<br=
>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN5boost15program_options16validation_err=
orE[_ZTIN5boost15program_options16validation_errorE]+0x10): undefined refer=
ence to `typeinfo for boost::program_options::error_with_option_name&#39;<b=
r>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN3uhd5rfnoc20replay_block_controlE[_ZTI=
N3uhd5rfnoc20replay_block_controlE]+0x10): undefined reference to `typeinfo=
 for uhd::rfnoc::noc_block_base&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTIN=
3uhd5rfnoc13radio_controlE[_ZTIN3uhd5rfnoc13radio_controlE]+0x18): undefine=
d reference to `typeinfo for uhd::rfnoc::noc_block_base&#39;<br>/tmp/ccXdJ5=
o0.o:(.data.rel.ro._ZTIN3uhd5rfnoc17duc_block_controlE[_ZTIN3uhd5rfnoc17duc=
_block_controlE]+0x10): undefined reference to `typeinfo for uhd::rfnoc::no=
c_block_base&#39;<br>/tmp/ccXdJ5o0.o: In function `uhd::type_error::~type_e=
rror()&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZN3uhd10type_e=
rrorD2Ev[_ZN3uhd10type_errorD5Ev]+0xf): undefined reference to `vtable for =
uhd::type_error&#39;<br>/tmp/ccXdJ5o0.o: In function `boost::program_option=
s::variables_map::~variables_map()&#39;:<br>rfnoc_replay_samples_1_from_fil=
e.cpp:(.text._ZN5boost15program_options13variables_mapD2Ev[_ZN5boost15progr=
am_options13variables_mapD5Ev]+0xf): undefined reference to `vtable for boo=
st::program_options::variables_map&#39;<br>/tmp/ccXdJ5o0.o: In function `bo=
ost::program_options::typed_value&lt;double, char&gt;::name[abi:cxx11]() co=
nst&#39;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15progra=
m_options11typed_valueIdcE4nameB5cxx11Ev[_ZNK5boost15program_options11typed=
_valueIdcE4nameB5cxx11Ev]+0x43): undefined reference to `boost::program_opt=
ions::arg[abi:cxx11]&#39;<br>/tmp/ccXdJ5o0.o: In function `boost::program_o=
ptions::typed_value&lt;unsigned long, char&gt;::name[abi:cxx11]() const&#39=
;:<br>rfnoc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_optio=
ns11typed_valueImcE4nameB5cxx11Ev[_ZNK5boost15program_options11typed_valueI=
mcE4nameB5cxx11Ev]+0x43): undefined reference to `boost::program_options::a=
rg[abi:cxx11]&#39;<br>/tmp/ccXdJ5o0.o: In function `boost::program_options:=
:typed_value&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;cha=
r&gt;, std::allocator&lt;char&gt; &gt;, char&gt;::name() const&#39;:<br>rfn=
oc_replay_samples_1_from_file.cpp:(.text._ZNK5boost15program_options11typed=
_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcE4nameEv[_ZNK5b=
oost15program_options11typed_valueINSt7__cxx1112basic_stringIcSt11char_trai=
tsIcESaIcEEEcE4nameEv]+0x43): undefined reference to `boost::program_option=
s::arg[abi:cxx11]&#39;<br>/tmp/ccXdJ5o0.o: In function `boost::program_opti=
ons::typed_value&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt=
;char&gt;, std::allocator&lt;char&gt; &gt;, char&gt;::xparse(boost::any&amp=
;, std::vector&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;c=
har&gt;, std::allocator&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::b=
asic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&g=
t; &gt; &gt; &gt; const&amp;) const&#39;:<br>rfnoc_replay_samples_1_from_fi=
le.cpp:(.text._ZNK5boost15program_options11typed_valueINSt7__cxx1112basic_s=
tringIcSt11char_traitsIcESaIcEEEcE6xparseERNS_3anyERKSt6vectorIS7_SaIS7_EE[=
_ZNK5boost15program_options11typed_valueINSt7__cxx1112basic_stringIcSt11cha=
r_traitsIcESaIcEEEcE6xparseERNS_3anyERKSt6vectorIS7_SaIS7_EE]+0x7a): undefi=
ned reference to `boost::program_options::validate(boost::any&amp;, std::ve=
ctor&lt;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, s=
td::allocator&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_strin=
g&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &g=
t; &gt; const&amp;, std::__cxx11::basic_string&lt;char, std::char_traits&lt=
;char&gt;, std::allocator&lt;char&gt; &gt;*, int)&#39;<br>/tmp/ccXdJ5o0.o: =
In function `void boost::program_options::validate&lt;double, char&gt;(boos=
t::any&amp;, std::vector&lt;std::__cxx11::basic_string&lt;char, std::char_t=
raits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::allocator&lt;std::=
__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator=
&lt;char&gt; &gt; &gt; &gt; const&amp;, double*, long)&#39;:<br>rfnoc_repla=
y_samples_1_from_file.cpp:(.text._ZN5boost15program_options8validateIdcEEvR=
NS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_=
EEESaISB_EEPT_l[_ZN5boost15program_options8validateIdcEEvRNS_3anyERKSt6vect=
orINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT_l]+=
0x42): undefined reference to `boost::program_options::validators::check_fi=
rst_occurrence(boost::any const&amp;)&#39;<br>rfnoc_replay_samples_1_from_f=
ile.cpp:(.text._ZN5boost15program_options8validateIdcEEvRNS_3anyERKSt6vecto=
rINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT_l[_Z=
N5boost15program_options8validateIdcEEvRNS_3anyERKSt6vectorINSt7__cxx1112ba=
sic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT_l]+0x122): undefined =
reference to `boost::program_options::invalid_option_value::invalid_option_=
value(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std=
::allocator&lt;char&gt; &gt; const&amp;)&#39;<br>/tmp/ccXdJ5o0.o: In functi=
on `void boost::program_options::validate&lt;unsigned long, char&gt;(boost:=
:any&amp;, std::vector&lt;std::__cxx11::basic_string&lt;char, std::char_tra=
its&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::allocator&lt;std::__=
cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&l=
t;char&gt; &gt; &gt; &gt; const&amp;, unsigned long*, long)&#39;:<br>rfnoc_=
replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options8validateIm=
cEEvRNS_3anyERKSt6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ES=
aIS7_EEESaISB_EEPT_l[_ZN5boost15program_options8validateImcEEvRNS_3anyERKSt=
6vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEP=
T_l]+0x42): undefined reference to `boost::program_options::validators::che=
ck_first_occurrence(boost::any const&amp;)&#39;<br>rfnoc_replay_samples_1_f=
rom_file.cpp:(.text._ZN5boost15program_options8validateImcEEvRNS_3anyERKSt6=
vectorINSt7__cxx1112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT=
_l[_ZN5boost15program_options8validateImcEEvRNS_3anyERKSt6vectorINSt7__cxx1=
112basic_stringIT0_St11char_traitsIS7_ESaIS7_EEESaISB_EEPT_l]+0x11d): undef=
ined reference to `boost::program_options::invalid_option_value::invalid_op=
tion_value(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;=
, std::allocator&lt;char&gt; &gt; const&amp;)&#39;<br>/tmp/ccXdJ5o0.o: In f=
unction `boost::program_options::error_with_option_name::error_with_option_=
name(boost::program_options::error_with_option_name const&amp;)&#39;:<br>rf=
noc_replay_samples_1_from_file.cpp:(.text._ZN5boost15program_options22error=
_with_option_nameC2ERKS1_[_ZN5boost15program_options22error_with_option_nam=
eC5ERKS1_]+0x27): undefined reference to `vtable for boost::program_options=
::error_with_option_name&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost1=
6exception_detail10clone_implINS0_19error_info_injectorINS_15program_option=
s16validation_errorEEEEE[_ZTVN5boost16exception_detail10clone_implINS0_19er=
ror_info_injectorINS_15program_options16validation_errorEEEEE]+0x28): undef=
ined reference to `boost::program_options::error_with_option_name::what() c=
onst&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail10c=
lone_implINS0_19error_info_injectorINS_15program_options16validation_errorE=
EEEE[_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorINS=
_15program_options16validation_errorEEEEE]+0x38): undefined reference to `b=
oost::program_options::error_with_option_name::substitute_placeholders(std:=
:__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocato=
r&lt;char&gt; &gt; const&amp;) const&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro.=
_ZTVN5boost16exception_detail19error_info_injectorINS_15program_options16va=
lidation_errorEEE[_ZTVN5boost16exception_detail19error_info_injectorINS_15p=
rogram_options16validation_errorEEE]+0x20): undefined reference to `boost::=
program_options::error_with_option_name::what() const&#39;<br>/tmp/ccXdJ5o0=
.o:(.data.rel.ro._ZTVN5boost16exception_detail19error_info_injectorINS_15pr=
ogram_options16validation_errorEEE[_ZTVN5boost16exception_detail19error_inf=
o_injectorINS_15program_options16validation_errorEEE]+0x30): undefined refe=
rence to `boost::program_options::error_with_option_name::substitute_placeh=
olders(std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, st=
d::allocator&lt;char&gt; &gt; const&amp;) const&#39;<br>/tmp/ccXdJ5o0.o:(.d=
ata.rel.ro._ZTVN5boost16exception_detail10clone_implINS0_19error_info_injec=
torINS_15program_options20invalid_option_valueEEEEE[_ZTVN5boost16exception_=
detail10clone_implINS0_19error_info_injectorINS_15program_options20invalid_=
option_valueEEEEE]+0x28): undefined reference to `boost::program_options::e=
rror_with_option_name::what() const&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._=
ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorINS_15pro=
gram_options20invalid_option_valueEEEEE[_ZTVN5boost16exception_detail10clon=
e_implINS0_19error_info_injectorINS_15program_options20invalid_option_value=
EEEEE]+0x38): undefined reference to `boost::program_options::error_with_op=
tion_name::substitute_placeholders(std::__cxx11::basic_string&lt;char, std:=
:char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; const&amp;) const=
&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost16exception_detail19error=
_info_injectorINS_15program_options20invalid_option_valueEEE[_ZTVN5boost16e=
xception_detail19error_info_injectorINS_15program_options20invalid_option_v=
alueEEE]+0x20): undefined reference to `boost::program_options::error_with_=
option_name::what() const&#39;<br>/tmp/ccXdJ5o0.o:(.data.rel.ro._ZTVN5boost=
16exception_detail19error_info_injectorINS_15program_options20invalid_optio=
n_valueEEE[_ZTVN5boost16exception_detail19error_info_injectorINS_15program_=
options20invalid_option_valueEEE]+0x30): undefined reference to `boost::pro=
gram_options::error_with_option_name::substitute_placeholders(std::__cxx11:=
:basic_string&lt;char, std::char_traits&lt;char&gt;, std::allocator&lt;char=
&gt; &gt; const&amp;) const&#39;<br>collect2: error: ld returned 1 exit sta=
tus<br>&lt;builtin&gt;: recipe for target &#39;rfnoc_replay_samples_1_from_=
file&#39; failed<br>make: *** [rfnoc_replay_samples_1_from_file] Error 1<br=
><br></div><div>From looking at the whole printout to the screen, it seems =
as though UHD functions as well as boost functions are not being seen, henc=
e the &quot;undefined reference&quot; messages. I&#39;m unclear as to why t=
his is happening at the moment. This is a complete printout. </div></div><d=
iv dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><div><br></div>
       =20
        </div><div id=3D"gmail-m_4138751046974990226yahoo_quoted_0202758600=
">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Wednesday, August 25, 2021, 10:30:21 AM EDT, Tellrel=
l White via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_4138751046974990226yiv8453007228"><=
div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sa=
ns-serif;font-size:13px"><div></div>
        <div dir=3D"ltr"><div>Thanks for the reply. I tried the CMake appro=
ach following the steps you mentioned but received an error when building.=
=C2=A0 </div></div><div><br clear=3D"none"></div><div dir=3D"ltr">First, I =
created CMakeLists which is pretty simple as shown below<br clear=3D"none">=
</div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><div dir=
=3D"ltr"><pre><code>cmake_minimum_required(VERSION <span>3.10</span>)

<span>#set</span> the project name
project(Tutorial)

<span>#add</span> the executable
add_executable(replay_example rfnoc_replay_samples_1_from_file.cpp)<br clea=
r=3D"none"><br clear=3D"none">Then, I sourced the file, and set the flag fo=
r CMake. Lastly, inside of a build directory, I tried building the App and =
got the following printout <br clear=3D"none"><br clear=3D"none"></code></p=
re><div>/usr/local/share/uhd/images/y/sysroots/x86_64-oesdk-linux/usr/libex=
ec/arm-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/9.2.0/real-ld: CMakeFiles/=
replay_example.dir/rfnoc_replay_samples_1_from_file.cpp.o:(.rodata._ZTVN5bo=
ost15program_options11typed_valueIjcEE[_ZTVN5boost15program_options11typed_=
valueIjcEE]+0x1c): undefined reference to `boost::program_options::value_se=
mantic_codecvt_helper&lt;char&gt;::parse(boost::any&amp;, std::vector&lt;st=
d::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::alloca=
tor&lt;char&gt; &gt;, std::allocator&lt;std::__cxx11::basic_string&lt;char,=
 std::char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt; &gt; &gt; co=
nst&amp;, bool) const&#39;<br clear=3D"none">/usr/local/share/uhd/images/y/=
sysroots/x86_64-oesdk-linux/usr/libexec/arm-oe-linux-gnueabi/gcc/arm-oe-lin=
ux-gnueabi/9.2.0/real-ld: CMakeFiles/replay_example.dir/rfnoc_replay_sample=
s_1_from_file.cpp.o:(.rodata._ZTVN5boost15program_options11typed_valueIdcEE=
[_ZTVN5boost15program_options11typed_valueIdcEE]+0x1c): undefined reference=
 to `boost::program_options::value_semantic_codecvt_helper&lt;char&gt;::par=
se(boost::any&amp;, std::vector&lt;std::__cxx11::basic_string&lt;char, std:=
:char_traits&lt;char&gt;, std::allocator&lt;char&gt; &gt;, std::allocator&l=
t;std::__cxx11::basic_string&lt;char, std::char_traits&lt;char&gt;, std::al=
locator&lt;char&gt; &gt; &gt; &gt; const&amp;, bool) const&#39;<br clear=3D=
"none">collect2: error: ld returned 1 exit status<br clear=3D"none">CMakeFi=
les/replay_example.dir/build.make:83: recipe for target &#39;replay_example=
&#39; failed<br clear=3D"none">make[2]: *** [replay_example] Error 1<br cle=
ar=3D"none">CMakeFiles/Makefile2:75: recipe for target &#39;CMakeFiles/repl=
ay_example.dir/all&#39; failed<br clear=3D"none">make[1]: *** [CMakeFiles/r=
eplay_example.dir/all] Error 2<br clear=3D"none">Makefile:83: recipe for ta=
rget &#39;all&#39; failed<br clear=3D"none">make: *** [all] Error 2<br clea=
r=3D"none"></div><div><br clear=3D"none"></div><div dir=3D"ltr">I&#39;m not=
 sure if this is a boost issue or something else.<br clear=3D"none"></div><=
br clear=3D"none"></div><div><br clear=3D"none"></div></div><div dir=3D"ltr=
"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div>
       =20
        </div><div id=3D"gmail-m_4138751046974990226yiv8453007228yqt56248">=
<div id=3D"gmail-m_4138751046974990226yiv8453007228yahoo_quoted_0629161307"=
>
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 07:21:17 PM EDT, Jonathon =
Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank"=
>jonathon.pendlum@ettus.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"gmail-m_4138751046974990226yiv8453007228"><=
div><div dir=3D"ltr">Hi Tellrell,<div><br clear=3D"none"></div><div>Do not =
use the Xilinx SDK, only the Yocto one, i.e.=C2=A0<span style=3D"font-size:=
13px;font-family:Helvetica,Arial,sans-serif">/usr/local/share/uhd/images/y/=
</span><span style=3D"font-size:13px;font-family:Helvetica,Arial,sans-serif=
">sysroots/cortexa9t2hf-neon-oe-</span><span style=3D"font-size:13px;font-f=
amily:Helvetica,Arial,sans-serif">linux-gnueabi</span></div><div><br clear=
=3D"none"></div><div>You need to source the &quot;environment-setup-cortexa=
9t2hf-neon-oe-linux-gnueabi&quot;=C2=A0file before cross compiling. If you =
use cmake with building your application, you also need to set the flag &qu=
ot;-DCMAKE_TOOLCHAIN_FILE=3D&lt;path to UHD&gt;/host/cmake/Toolchains/oe-sd=
k_cross.cmake&quot;.</div><div><br clear=3D"none"></div><div>Also, if you j=
ust want to run the UHD example, it already exists on the N310&#39;s root f=
ile system at: /usr/lib/uhd/examples/rfnoc_replay_samples_from_file</div><d=
iv><br clear=3D"none"></div><div>Jonathon</div></div><br clear=3D"none"><di=
v><div id=3D"gmail-m_4138751046974990226yiv8453007228yqt79511"><div dir=3D"=
ltr">On Tue, Aug 24, 2021 at 4:42 PM Tellrell White via USRP-users &lt;<a r=
el=3D"nofollow noopener noreferrer" shape=3D"rect" href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br clear=3D"none"></div><blockquote style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"=
font-family:Helvetica,Arial,sans-serif;font-size:13px"><div></div>
        <div dir=3D"ltr">I&#39;m trying to compile the source code using SD=
K 2019.1. I&#39;m pointing the the SDK project to the directory for sysroot=
 and also to the directory for my linux toolchain which are the following</=
div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"> <span>/usr/=
local/share/uhd/images/y/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi<span><=
br clear=3D"none"></span></span></div><div dir=3D"ltr"><span><span><br clea=
r=3D"none"></span></span></div><div dir=3D"ltr"><span><span>/tools/Xilinx/S=
DK/2019.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/arm-linux-gnueabihf</span><=
/span></div><div dir=3D"ltr"><span><span><br clear=3D"none"></span></span><=
/div><div dir=3D"ltr"><span><span>I continue to get the following error sta=
ting that these files can&#39;t be found, however, they do exist. And, when=
 I try adding them within the project and refreshing nothing happens. <br c=
lear=3D"none"></span></span></div><div dir=3D"ltr"><span><span><br clear=3D=
"none"></span></span></div><div><span></span><br clear=3D"none"><div>cannot=
 find /lib/ld-linux-armhf.so.3=C2=A0=C2=A0 <br clear=3D"none"></div><br cle=
ar=3D"none"><div dir=3D"ltr"><div><div>cannot find /lib/libc.so.6=C2=A0=C2=
=A0=C2=A0 <br clear=3D"none"></div><div><br clear=3D"none"><div>cannot find=
 /usr/lib/libc_nonshared.a=C2=A0=C2=A0=C2=A0 <br clear=3D"none"></div><div>=
<br clear=3D"none"></div><div dir=3D"ltr">Am I going about building this ap=
plication correctly? I thought that linking my project to sysroot which I i=
nstalled for the n310 and to the SDK toolchain( maybe I&#39;m doing this in=
correctly) would be pretty straightforward.<br clear=3D"none"></div><br cle=
ar=3D"none"></div><div dir=3D"ltr"><div><br clear=3D"none"></div></div><br =
clear=3D"none"></div><div><br clear=3D"none"></div></div><br clear=3D"none"=
></div><div dir=3D"ltr"><span><br clear=3D"none"></span></div><div dir=3D"l=
tr"><span></span><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"non=
e"></div><div dir=3D"ltr"><br clear=3D"none"></div><div><br clear=3D"none">=
</div>
       =20
        </div><div id=3D"gmail-m_4138751046974990226yiv8453007228gmail-m_41=
35037161792215501yahoo_quoted_0310847195">
            <div style=3D"font-family:Helvetica,Arial,sans-serif;font-size:=
13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Tuesday, August 24, 2021, 12:41:05 PM EDT, Marcus D.=
 Leech &lt;<a rel=3D"nofollow noopener noreferrer" shape=3D"rect" href=3D"m=
ailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a=
>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"gmail-m_4138751046974990226yiv8453007228gma=
il-m_4135037161792215501yiv8850409427"><div>
    <div id=3D"gmail-m_4138751046974990226yiv8453007228gmail-m_413503716179=
2215501yiv8850409427yqtfd55190"><div>On 2021-08-24 12:08 p.m., Tellrell
      White wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div></div><div id=3D"gmail-m_4138751046974990226yiv845=
3007228gmail-m_4135037161792215501yiv8850409427yqtfd67013"></div><div><div =
style=3D"font-family:Helvetica,Arial,sans-serif;font-size:13px"><div id=3D"=
gmail-m_4138751046974990226yiv8453007228gmail-m_4135037161792215501yiv88504=
09427yqtfd55908">
        </div><div dir=3D"ltr"><div id=3D"gmail-m_4138751046974990226yiv845=
3007228gmail-m_4135037161792215501yiv8850409427yqtfd79456">Yep. Marcus you =
caught it!!
          That worked. Do I need to complete the sections on &quot;Compilin=
g
          MPM Natively&quot; and &quot;Building UHD&quot;?? I understand th=
at I need
          the cross-compiler for compiling SW for the device but I don&#39;=
t
          see the need for completing the other two parts. Is there
          something additional that needs to be done other than cross
          compiling on the host machine and ssh&#39;ing over the executable=
?
          </div><br clear=3D"none">
        </div>
        <br clear=3D"none">
      </div>
   =20
    As far as I know, you should be able to just cross-compile the code
    you&#39;re interested in.<div id=3D"gmail-m_4138751046974990226yiv84530=
07228gmail-m_4135037161792215501yiv8850409427yqtfd36793"><br clear=3D"none"=
>
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div></div>
            </div>
        </div></div>_______________________________________________<br clea=
r=3D"none">
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br clear=3D"none">
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" sha=
pe=3D"rect" href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_bla=
nk">usrp-users-leave@lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div>
</div></div></div>
            </div>
        </div></div></div></div><div id=3D"gmail-m_4138751046974990226yqt30=
266">_______________________________________________<br clear=3D"none">USRP=
-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none"=
>To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-user=
s-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com=
</a><br clear=3D"none"></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000024c90005ca824430--

--===============4189138620374301277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4189138620374301277==--
